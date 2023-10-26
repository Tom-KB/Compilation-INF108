open Ast
open Ast_mips

exception Return of instruction list
exception VarUndef of string

(* représente la pile SP *)
let pile = ref []
let push x = (pile := x :: !pile)
let pop () = (pile := List.tl !pile)
let func_actuelle = ref { typ = Int; name = "f"; args = [| (Int, "a")|] ; body = Def(Int, "b") }
let return = ref false
let r_prec = ref false 

(* table de hachage sui stocke les fonctions *)
let tab_fonctions= Hashtbl.create 97

(* compteur d'instruction If/IfElse *)
let id_if = ref 0 

let rec index x instr = function
  | [] -> raise (VarUndef x)
  | (b, h) :: t ->
     if h = x
     then (if b then instr else failwith "variable non assigné")
     else index x (instr+1) t

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

(* retire les i premiers éléments du haut de la pile *)
let rem_from_pile i instr = for _=1 to i do pop () done; Addi(SP, SP, 4*i) :: instr

(* transforme une instruction en fonction *)
let ( ~: ) x instr = x :: instr

let apply (o : binop) r1 r2 =
  List.rev_append
    (match o with
     | Add -> [Add (A0, r1, r2)]
     | Sub -> [Sub (A0, r1, r2)]
     | Mul -> [Mult(r1, r2); Mflo A0]
     | Div -> [Div (r1, r2); Mflo A0]
     | Mod -> [Div (r1, r2); Mfhi A0]
     | Leq -> [Sub (A0, r1, r2); Slti (A0, A0, 1)]
     | Le  -> [Slt (A0, r1, r2)]
     | Geq -> [Sub (A0, r2, r1); Slti (A0, A0, 1)]
     | Ge  -> [Slt (A0, r2, r1)]
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
  | Moins e -> instr |> (compile_expr e) |> ~:(Sub(A0, Zero, A0))
  | Not e ->
     instr
     |> (compile_expr e)
     |> ~:(Slti(A1, A0, 0))
     |> ~:(Slt(A0, Zero, A0))
     |> ~:(Nor(A0, A0, A1))
  | Op(o, e1, e2) ->
     instr
     |> (compile_expr e1)
     |> (add_to_pile "1") (* on ajoute le res de e1 sous forme de variable nommé 1 *)
     |> (assign "1")
     |> (compile_expr e2)
     |> ~:(Lw(A1, Areg (0, SP))) (* on met le res de e1 dans A1 *)
     |> (rem_from_pile 1)
     |> (apply o A1 A0)
  | Ecall(f, args) ->
     assert ((Hashtbl.find tab_fonctions f) <> Void);
     instr
     |> (compile_expr args.(0))
     |> ~:(Jal f)


let if_def = function
  | Def _ -> 1
  | _ -> 0


let print = List.rev_append [Li (V0, 1); Syscall; Li (V0, 11); Li (A0, 10); Syscall]

(* Compilation d'un stmt *)
(* stmt -> instruction list -> instruction list *)
(* TODO : Le return, le Scall, la verification de type avec Def et Assign*)
let rec compile_stmt stmt_node instr = match stmt_node with
  | Def(_, x) -> instr |> (add_to_pile x) 
  | Assign(Var x, exp) -> instr |> (compile_expr exp) |> (assign x)
  | Scall("print_int", args) ->
     assert (Array.length args = 1);
     instr |> (compile_expr args.(0)) |> print
  | Scall(f, args) ->
     assert (Hashtbl.find tab_fonctions f = Void);
     instr
     |> (compile_expr args.(0))
     |> ~:(Jal f)
  | Block lst -> (let count = ref 0 in
     (* On compte les defs et on retire le même
        nombre de variable de la pile que de defs *)
        try(
            let d, instr' =
              List.fold_left (fun (d, instr') (s, _) -> count:= !count + if_def s;
                  let res= (d + if_def s, compile_stmt s instr') in             
                    return := !r_prec || ! return; 
                    r_prec := false;
                    res
                ) (0, instr) lst in
            rem_from_pile d instr')
        with
          | Return e -> (let f = !func_actuelle in return := true;
                        if f.typ <> Void then (e
                          |> (rem_from_pile (!count))
                          |> ~:(Lw(RA, Areg(0, SP)))
                          |> ~:(Addi(SP,SP, 8))
                          |> ~:(Jr RA)
                          )
                        else failwith " return in a void function" )
        )
  | Return e -> raise (Return (compile_expr e instr))
  | If(e, stmt) ->
     incr id_if;
     let suite = "suite" ^ (string_of_int !id_if) in
     instr
     |> (compile_expr e)
     |> ~:(Beq(A0, Zero, suite))
     |> (compile_stmt stmt)
     |> ~:(Label suite)
  | IfElse(e, stmt1, stmt2) ->
     incr id_if;
     let suite = "suite" ^ (string_of_int !id_if) in
     let else_ =  "else" ^ (string_of_int !id_if) in
     instr
     |> (compile_expr e)
     |> ~:(Beq(A0, Zero, else_))
     |> (compile_stmt stmt1)
     |> ~:(r_prec := !return; return := false; Bne(A0, Zero, suite))
     |> ~:(Label else_)
     |> (compile_stmt stmt2)
     |> ~:(r_prec := !return && !r_prec; return := false;Label suite)


(* func -> instruction list -> instruction list *)
let compile_obj objet instr = match objet with
  | V(t, name) -> instr |> (add_to_pile name) 
  | F f ->
    Hashtbl.add tab_fonctions f.name f.typ; 
    func_actuelle:= f;
    let r =
    instr
      |> ~:(Label f.name)
      |> (add_to_pile (snd f.args.(0)))
      |> (assign (snd f.args.(0)))
      |> ~:(Move(A0, RA))
      |> (add_to_pile "0RA")
      |> (assign "0RA")
      |> (compile_stmt f.body )
      |> ~:(Lw(RA, Areg(0, SP)))
      |> (rem_from_pile 2)
      |> ~:(Jr RA)
    in
    if f.typ <> Void && !return=false then failwith "Non void function doesn't always return"
    else return := false; r_prec := false; r


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
