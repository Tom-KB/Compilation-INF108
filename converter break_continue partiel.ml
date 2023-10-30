open Ast
open Ast_mips

exception To_Return of instruction list
exception VarUndef of string

exception GetOutContinue of (instruction list -> instruction list )
exception Ebreak of (instruction list -> instruction list )
exception GetOutContinue_else of (instruction list -> instruction list )
exception Ebreak_else of (instruction list -> instruction list )
(* représente la pile SP *)
let pile = ref []
let push x = (pile := x :: !pile)
let pop () = (pile := List.tl !pile)

(* table de hachage sui stocke les fonctions *)
let tab_fonctions = Hashtbl.create 13

(* compteur d'instruction If/IfElse *)
let id_if = ref 0 

(* compteur d'instruction WHILE *)
let id_while=ref 0




let rec index x acc = function
  | [] -> raise (VarUndef x)
  | (b, h) :: t ->
     if h = x
     then (if b then acc else failwith "variable non assigné")
     else index x (acc+1) t

(* renvoie la valeur associé à la variable x*)
let value (x : string) = Areg(4*index x 0 !pile, SP)

(* augmente le taille de la pile *)
let add_to_pile x instr = push (false, x); Addi(SP, SP, -4) :: instr

(* assign x v : assigne à x la valeur v,
   en mettant à jour le booléen qui indique si la variable est assigné*)
let assign x instr =
  let cnt = ref 0 in
  let rec modifielist = function
    | [] -> raise (VarUndef(x))
    | (_, y) :: t when y = x -> (true, y) :: t
    |  h :: t -> incr cnt; h :: modifielist t
  in
  pile := modifielist !pile; Sw(A0, Areg(4* !cnt, SP)) :: instr

(* retire les i dernières variables définies
   d'abord dans le compilateur
   puis dans MIPS *)
let rem_from_pile i instr =
  if i < 1 then instr
  else
  (for _ = 1 to i do pop () done;
   Addi(SP, SP, 4*i) :: instr)

(* transforme une instruction en fonction *)
let ( ~: ) x instr = x :: instr

let apply (o : binop) r1 r2 =
  List.rev_append
    (match o with
     | Add -> print_string("Add\n"); [Add (A0, r1, r2)]
     | Sub -> print_string("Sub\n"); [Sub (A0, r1, r2)]
     | Mul -> [Mult(r1, r2); Mflo A0]
     | Div -> [Div (r1, r2); Mflo A0]
     | Mod -> [Div (r1, r2); Mfhi A0]
     | Leq -> print_string("Leq\n"); [Sub (A0, r1, r2); Slti (A0, A0, 1)]
     | Le  -> print_string("Le\n"); [Slt (A0, r1, r2)]
     | Geq -> print_string("Geq\n"); [Sub (A0, r2, r1); Slti (A0, A0, 1)]
     | Ge  -> print_string("Ge\n"); [Slt (A0, r2, r1)]
     | Neq -> [Xor (A0, r1, r2); Sltu(A0, Zero, A0)]
     | Eq  -> [Sub (A0, r1, r2); Sltiu(A0, A0, 1)]
     | And -> [And (A0, r1, r2)]
     | Or  -> [Or  (A0, r1, r2)])

(* Les fonctions "compile" prennent un élément d'un certain type
   et renvoie une fonction qui modifie une liste d'instruction MIPS
   pour y ajouter d'autres instructions MIPS, d'où la signature
   type -> instruction list -> instruction list
   à lire plutôt comme
   type -> (instruction list -> instruction list).
   Ces fonctions sont en général constitué de fonctions
   (instruction list -> instruction list)
   appliqué à la liste d'instructions à modifier
   (ex: add_to_pile, assign, rem_from_pile).
   Elles ajoutent les instructions à l'envers, de sorte que
   le dernière instruction à effectuer soit en tête de liste.
   L'utilisation de la pipe ( |> ) permet alors d'appliquer
   ces fonctions dans une syntaxe qui permet alors à l'utilisateur
   la lecture des instructions dans l'ordre que MIPS utilisera.
   On ne renverse la liste d'instructions
   qu'à la fin de la conversion, pour qu'ensuite les
   instructions soient lues dans le bon sens.
 *)

(* expr -> instruction list -> instruction list *)
(* Met dans A0 le résultat de l'expression. *)
let rec compile_expr ex instr = match ex with
  | I i -> Li(A0, i) :: instr
  | Val (Var x) -> Lw(A0, value x) :: instr
  | Moins e -> print_string("Moins\n"); instr |> (compile_expr e) |> ~:(Sub(A0, Zero, A0))
  | Not e ->
     instr
     |> (compile_expr e)
     |> ~:(Slti(A1, A0, 0))
     |> ~:(Slt(A0, Zero, A0))
     |> ~:(Nor(A0, A0, A1))
  | Op(o, e1, e2) -> print_string("OP\n ");
     instr
     |> (compile_expr e1)
     |> (add_to_pile "1") (* on ajoute le res de e1 sous forme de variable nommé 1 *)
     |> (assign "1")
     |> (compile_expr e2)
     |> ~:(Lw(A1, Areg (0, SP))) (* on met le res de e1 dans A1 *)
     |> (rem_from_pile 1)
     |> (apply o A1 A0)
  | Ecall(f, args) ->
     let typ = Hashtbl.find tab_fonctions f in
     assert (typ <> Void);
     instr
     |> (compile_expr args.(0))
     |> ~:(Jal f)


let print = List.rev_append [Li (V0, 1); Syscall; Li (V0, 11); Li (A0, 10); Syscall]
let return = List.rev_append [Lw(RA, Areg(0, SP)); Addi (SP, SP, 8); Jr RA]


(* Compilation d'un stmt *)
(* stmt -> bool -> int -> instruction list -> instruction list *)
(* void est booléen indiquant si la fonction qui contient stmt est void
   d est le nombre de variables locales définies avant *)
let rec compile_stmt void d stmt_node instr = match stmt_node with
  | Def(_, x) -> instr |> (add_to_pile x) 
  | Assign(Var x, exp) -> print_string(" Assign\n"); instr |> (compile_expr exp) |> (assign x)
  | Scall("print_int", args) ->
     assert (Array.length args = 1);
     instr |> (compile_expr args.(0)) |> print
  | Scall(f, args) ->
     let typ = Hashtbl.find tab_fonctions f in
     assert (typ = Void);
     instr
     |> (compile_expr args.(0))
     |> ~:(Jal f)
  | Block lst -> (try  compile_block void d lst instr with 
        |GetOutContinue(f)-> (print_string( " bloc continue\n"); raise (GetOutContinue(f)))
        |Ebreak  inst-> (print_string( " bloc break\n"); raise (Ebreak inst)))

  | Return e ->
    if void
    then failwith "Return in void function"
    else instr |> (compile_expr e) |> ~:(Addi(SP, SP, d*4)) |> return
  | If(e, stmt) -> (
     incr id_if;
     let suite = "suite" ^ (string_of_int !id_if) in   try 
     let i =
     instr
     |> (compile_expr e)
     |> ~:(Beq(A0, Zero, suite)) in 
       (compile_stmt void d stmt i) 
     |> ~:(Label suite)
  with
      |GetOutContinue(f)-> print_string( " if continue\n"); raise (GetOutContinue ( fun x-> ((Label suite))::( f(x) ) ) )
      |Ebreak inst-> print_string( " if break \n"); raise (Ebreak (fun x -> ((Label suite))::(inst(x))))
  )
  | IfElse(e, stmt1, stmt2) -> (print_string("if else\n ");
      
     incr id_if;
     let suite = "suite" ^ (string_of_int !id_if) in
     let else_ =  "else" ^ (string_of_int !id_if) in
     let i= ref (instr |> (compile_expr e) |> ~:(Beq(A0, Zero, else_))) in
     try (i:=compile_stmt void d stmt1 (!i); print_int(1);
         try 
         print_int(2);
         (Label suite)::(J suite)::(compile_stmt void d stmt2 ((Label else_)::(J suite)::(!i)))
         with
         |GetOutContinue(g) -> print_int(3); raise (GetOutContinue_else(fun x-> ((Label suite)::(g(x))) ))
         |Ebreak(g)-> print_int(4); raise (Ebreak_else(fun x -> (Label suite)::(g(x)))) 
     )
     with
      | GetOutContinue(f) ->  (print_int(5);let g x = ((Label else_))::(f(x))  in
                     try print_int(6);
                        let r y=(Label suite)::(J suite)::(compile_stmt void d stmt2 (g(y) ) )  in
                        raise (GetOutContinue_else (r))
                     with
                        | GetOutContinue(h) -> print_int(7);raise (GetOutContinue(fun y -> (((Label suite)::h(y)))))
                        | GetOutContinue_else(f) -> print_float(0.3);raise (GetOutContinue(f)) 
                        | Ebreak_else(f) -> raise (Ebreak(f)) 
      )
      |Ebreak inst-> (print_float(0.5); let g x= Label else_ :: (inst x) in
                  try 
                        print_int(8);
                        let r x = (Label suite) ::(J suite) :: (compile_stmt void d stmt2 (g(x))) in
                        raise (Ebreak_else(r ))
                  with
                  | Ebreak inst2 ->  print_int(9);raise (Ebreak (fun x -> (Label suite)::(inst2(x)) ))
                  | Ebreak_else(f) -> print_int(9);raise (Ebreak(f)) 
      )
      |Ebreak_else(f) -> print_string ( "else break\n"); raise (Ebreak(f))
      |GetOutContinue_else(f) ->  print_string ( "else continue\n"); raise (GetOutContinue(f))  


  )
   
   | While (e, stmt) -> (print_string("entrée while\n ");
      let debwhile = "while" ^ (string_of_int !id_while) in
      let endwhile="endwhile"^ (string_of_int !id_while) in 
      incr id_while; 
      try(
      instr
         |> ~:(Label debwhile)  
         |> (compile_expr e) 
         |> ~:(Beq(A0, Zero, endwhile))
         |> (compile_stmt void d stmt)    
         |> ~:(J debwhile)
         |> ~: (Label endwhile))
      with
      |GetOutContinue(f)->  print_string("while continue\n");(Label endwhile)::(J debwhile)::(f((J debwhile)::[])) 
      |Ebreak inst-> print_string("while break \n");(Label endwhile)::(J debwhile)::(inst((J endwhile::[])))
         )
   | Continue -> print_string ("continue\n"); raise (GetOutContinue (fun l -> l@instr))
   | Break-> print_string("break\n");raise (Ebreak (fun l-> l@instr))


(* On compte les defs et on retire le même
   nombre de variable de la pile que de defs *)
and compile_block void d lst instr = match lst with
 | [] -> rem_from_pile d instr     
 | (Def _ as h, _) :: t -> instr |> (compile_stmt void (d+1) h) |> (compile_block void (d+1) t)
 | (If _ as h,_)::t | (IfElse _ as h, _)::t -> ( print_string("compile bloc\n"); try (let i =compile_stmt void d h instr in
      try 
         compile_block void d t i
      with
         |Ebreak(f) -> raise (Ebreak(f))
         |GetOutContinue(f) -> raise (GetOutContinue(f)) )
      with
      |GetOutContinue(f) -> (try 
                                 raise (GetOutContinue(fun x -> compile_block void d t (f(x))))
                           with
                              |GetOutContinue(h)-> raise (GetOutContinue(h)) ) 
      |Ebreak(f) -> (try 
                              raise (Ebreak(fun x -> compile_block void d t (f(x))))
                        with
                           |Ebreak(h)-> raise (Ebreak(h)) ) 
      )
 | (h, _) :: t -> (print_string("compile no exception\n");  instr |> (compile_stmt void d h) |> (compile_block void d t))



(* func -> instruction list -> instruction list *)
let compile_obj obj instr = match obj with
  | V(_, name) -> add_to_pile name instr
  | F f ->
    Hashtbl.add tab_fonctions f.name f.typ;
    instr
      |> ~:(Label f.name)
      |> (add_to_pile (snd f.args.(0)))
      |> (assign (snd f.args.(0)))
      |> ~:(Move(A0, RA))
      |> (add_to_pile "0RA")
      |> (assign "0RA")
      |> (compile_stmt (f.typ = Void) 0 f.body)
      |> ~:(Lw(RA, Areg(0, SP)))
      |> (rem_from_pile 2)
      |> ~:(Jr RA)


let rec compile_prog prog instr = match prog with
  | [] -> failwith "programme vide"
  | [F f] when f.name = "main" -> J "main" :: List.rev_append (compile_obj (F f) instr) [Li(V0, 10); Syscall]
  | [_] -> failwith "Dernier objet non main"
  | obj :: t -> compile_prog t (compile_obj obj instr)


(* Renvoie la liste des objets (type program) d'un code C en string *)
(* file = nom du %start dans parser.mly *)


let compile_program p ofile =
  Ast_mips.print_program {
      data = [];
      text = compile_prog p [];
    } ofile
