let _ = Printexc.record_backtrace true

open Ast
open Ast_mips
open Printf

exception VarUndef of string

(* List représentant le champ data pour les pointeurs *)
let data_ptr = ref []
(* Ajout du pointeur x au champ data, ajout d'un underscore pour éviter les interférences entre noms de variables et instructions MIPS *)
let push_data x = (data_ptr := Word("_"^x, 0) :: !data_ptr)

(* représente la pile SP *)
let pile = ref []
let push x = (pile := x :: !pile)
let pop n = for _=1 to n do pile := List.tl !pile done

(* table de hachage sui stocke les fonctions *)
let tab_fonctions = Hashtbl.create 13 (*clé de la table de hachage le nom de la fonction et la valeur est le couple type nombre d'argument de la fonction*)

(* générateur d'identifiant If/IfElse *)
let new_id_if =
  let id_if = ref 0 in
  fun () -> incr id_if; string_of_int !id_if

(* générateur d'identifiant While *)
let new_id_while =
  let id_while = ref 0 in
  fun () -> incr id_while; string_of_int !id_while

(* pile qui indique dans quelles While on est,
   avec la tête de pile étant la plus profonde*)
let pile_while = Stack.create ()

(* Retourne le type de la variable x *)
let rec var_type x  = function
  | [] -> raise (VarUndef x)
  | (typ, h, _) :: t ->
     if h = x
     then typ
     else var_type x t

(* Retourne la position de la variable x dans la pile *)
let rec index x acc = function
  | [] -> raise (VarUndef x)
  | (_, h, b) :: t ->
    if h = x
    then (if b then acc else failwith "Variable non assignée")
    else index x (acc+1) t

(* Value charge dans A0 la valeur associé à la variable x *)
let value (x : string) instr = match var_type x !pile with
  | P _ -> Lw(A0, Alab("_"^x)) :: instr (* Pour un pointeur la valeur mise dans A0 est une adresse *)
  | _ -> Lw(A0, Areg(4*index x 0 !pile, SP)) :: instr


(* augmente le taille de la pile *)
let add_to_pile typ x instr = push (typ, x, false); Addi(SP, SP, -4) :: instr


(* assign x instr : ajoute les opérations d'assignation de la valeur stockée dans A0 à la variable x*)
let assign x instr =
  let cnt = ref 0 in
  let flag = ref Void in
  let rec modifielist = function
    | [] -> raise (VarUndef(x))
    | (typ, h, _) :: t when h = x -> flag := typ; (typ, h, true) :: t
    |  h :: t -> incr cnt; h :: modifielist t
  in
  pile := modifielist !pile;
  match !flag with 
    | P _ -> Sw(A0, Alab("_"^x)) :: instr (* Stocke la valeur A0 dans le pointeur du champ data*)
    | _ -> Sw(A0, Areg(4 * !cnt, SP)) :: instr (* Stocke la valeur A0 dans la stack à l'emplacement de x *)


(* retire les i dernières variables définies
   d'abord dans le compilateur
   puis dans MIPS *)
let rem_from_pile i instr =
  if i < 1 then instr
  else
   (pop i;
    Addi(SP, SP, 4*i) :: instr)

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

(* Réalisation de l'opération 9 qui réserve A0 octets sur le tas et renvoie l'adresse dans V0 *)
let malloc = List.rev_append [Li (V0, 9); Syscall]

(* Réalise les opérations arithmétique sur les pointeurs *)
let rec apply_ptr_arith (o : binop) e1 e2 instr =
  let r1 = (compile_expr e1 true instr) in
  (match e2 with
      (* Soustraction de deux pointeurs *)
      | Val (Var x) -> let new_instr = Move(A1, A0) :: r1 in let r2 = compile_expr e2 true new_instr in 
              (
                match var_type x !pile with
                  | P _ -> (
                            match o with
                              | Sub -> Mflo(A0) :: Div(A0, A1) :: Li(A1, 4) :: Sub (A0, A1, A0) :: r2
                              | _ -> failwith "Erreur arithmétique des pointeurs"
                          )
                  | _ -> (
                          match o with
                            | Add -> Add (A0, A1, A0) :: Mflo (A0) :: Mult (A0, T 1) :: Li (T 1, 4) :: r2
                            | Sub -> Sub (A0, A1, A0) :: Mflo (A0) :: Mult (A0, T 1) :: Li (T 1, 4) :: r2
                            | _ -> failwith "Erreur arithmétique des pointeurs"
                         )
              )
              
      (* Addition et soustraction entre un pointeur et un entier *)
      | _ -> r1 |> ~:(Move(T 2, A0)) |> (compile_expr e2 true) |> 
                (
                match o with
                  | Add -> ~:(Add (A0, T 2, A0))
                  | Sub -> ~:(Sub (A0, T 2, A0))
                  | _ -> failwith "Erreur arithmétique des pointeurs"
                )
    )

(* expr -> instruction list -> instruction list *)
(* Met dans A0 le résultat de l'expression. *)
and compile_expr ex with_ptr instr = match ex with
| I i -> if with_ptr then 
          Li(A0, 4 * i) :: instr
         else  
          Li(A0, i) :: instr
 | Val (Var x) -> value x instr
 | Moins e -> instr |> (compile_expr e with_ptr) |> ~:(Sub(A0, Zero, A0))
 | Not e ->
   instr
   |> (compile_expr e with_ptr)
   |> ~:(Slti(A1, A0, 0)) (* Vérifie si A0 est  strictement positif *)
   |> ~:(Slt(A0, Zero, A0)) (*Vérifie si A0 est strictement negatif*)
   |> ~:(Nor(A0, A0, A1)) (* =1 si et seulement si A0 était nul donc fait la négation*)

 | Op(o, e1, e2) ->
    let basic_op instructions = instructions 
                  |> (compile_expr e1 with_ptr)
                  |> (add_to_pile Int "1") (* on ajoute le res de e1 sous forme de variable nommée 1 *)
                  |> (assign "1")
                  |> (compile_expr e2 with_ptr)
                  |> ~:(Lw(A1, Areg (0, SP))) (* on met le res de e1 dans A1 *)
                  |> (rem_from_pile 1)
                  |> (apply o A1 A0)
    in
    (
      match (e1, e2) with 
        | (Val (Var x), Val (Var y)) -> (
                                          (* Vérifie si le premier terme est un pointeur ou non *)
                                          match (var_type x !pile, var_type y !pile) with 
                                            | (P _, _) -> apply_ptr_arith o e1 e2 instr (* Si oui *)
                                            | (_, P _) -> apply_ptr_arith o e1 e2 instr (* Si oui *)
                                            | _ -> basic_op instr (* Si non *)
                                        )
        | (_, Val (Var x)) -> (
                                (* Vérifie si le premier terme est un pointeur ou non *)
                                match var_type x !pile with 
                                  | P _ -> apply_ptr_arith o e2 e1 instr (* Si oui *)
                                  | _ -> basic_op instr (* Si non *)
                              )
        | (Val (Var x), _) -> (
                                (* Vérifie si le premier terme est un pointeur ou non *)
                                match var_type x !pile with 
                                  | P _ -> apply_ptr_arith o e1 e2 instr (* Si oui *)
                                  | _ -> basic_op instr (* Si non *)
                              )
        | _ -> basic_op instr

    )

  (* Opération malloc *)
  | Ecall("malloc", args) -> assert (Array.length args = 1);
    instr |> ( match args.(0) with 
                | Val (Var x) -> (match var_type x !pile with 
                                  | P _ -> failwith "malloc ne prend pas de pointeur"
                                  | _ -> compile_expr args.(0) with_ptr
                              )
                | _ -> compile_expr args.(0) with_ptr
           ) |> malloc |> ~:(Move(A0, V0)) (* Mets l'adresse de l'espace alloué (qui est dans V0) dans A0 *)

  | Ecall(s, args) -> (*Ecall ne concerne que les fonctions avec return*)
   let typ, nb = Hashtbl.find tab_fonctions s in  (*on récupère le type et les arguments de la fonction *)
   assert (typ <> Void); 
   assert (Array.length args = nb);
   instr
   |> (compile_args args)
   |> ~:(Jal  ("func_"^s)) 
  
  
  (* Déréférencement de pointeur, charge dans A0 la valeur de l'adresse pointée *)
  | ValPointer e -> Lw(A0, Areg(0, A0)) :: compile_expr e true instr

  (* Charge dans A0 l'adresse de la variable ou du pointeur avec La (Locate Adress) *)
  | Address (Var x) -> ( match var_type x !pile with 
                          | P _ -> La(A0, Alab("_"^x)) :: instr
                          | _ -> La(A0, Areg(4*index x 0 !pile, SP)) :: instr
                      )   
  

and compile_args args instr =
  let res = Array.fold_left (fun instr' e ->
              instr'
              |> (compile_expr e false)
              |> (add_to_pile Void "0arg") (* ajoute quelque chose à la pile pour retenir qu'un espace à été alloué *)
              |> ~:(Sw(A0, Areg(0, SP)))
             ) instr args
  in
  pop (Array.length args);
  res


let print = List.rev_append [Li(V0, 1); Syscall; Li(V0, 11); Li(A0, 10); Syscall]
let return n = List.rev_append [Lw(RA, Areg(0, SP)); Addi(SP, SP, 4*(1+n)); Jr RA] (* le n stocke le nombre d'argument de la fonction. Ici on les retire de sp pour pouvoir ensuite réécrire par dessus*)


(* Compilation d'un stmt *)
(* stmt -> func -> int -> instruction list -> instruction list *)
(* f la fonction qui contient stmt
   d est le nombre de variables locales définies avant *)
let rec compile_stmt f d stmt_node instr = match stmt_node with
 | Def(P t, x) -> push_data x; add_to_pile (P t) x instr
 | Def(typ, x) -> add_to_pile typ x instr

 (* Assignation entre une variable, pointeur ou non, et une expression quelconque *)
  (* Il n'y a pas de vérification concernant l'assignation entre un pointeur et un entier, auquel cas la valeur de l'entier est interprété comme une adresse *)
 | Assign(Val (Var x), e2) -> let instructions = instr |> (compile_expr e2 false) in assign x instructions

 (* Assignation entre un pointeur déréférencé et une expression quelconque*)
 | Assign(ValPointer (e1), e2) -> let instructions = instr |> (compile_expr e2 false) |> ~:(Move(T 0, A0)) in Sw(T 0, Areg(0, A0)) :: (compile_expr e1 true instructions)

 (* Erreur lorsqu'une assignation est tenté entre d'autres expressions *)
 | Assign(_, _) -> failwith "Mauvaise assignation"

 (* Fonction permettant d'afficher un entier *)
 | Scall("print_int", args) ->
    assert (Array.length args = 1);
    instr |> compile_expr args.(0) false |> print

 | Scall(s, args) -> (* Scall ne concerne que les fonctions void*)
   let typ, nb = Hashtbl.find tab_fonctions s in (* On récupère le type et le nombre d'argument de la fonction  *)
   assert (typ = Void);
   assert (Array.length args = nb);
   instr
   |> (compile_args args)
   |> ~:(Jal  ("func_"^s))
 | Block lst -> compile_block f 0 lst instr
 | Return e ->
   if f.typ = Void
   then failwith "return dans une fonction void"
   else instr
        |> (compile_expr e false)
        |> ~:(Addi(SP, SP, d*4)) (*On enlève les variables locales *)
        |> (return (Array.length f.args))
 | If(e, stmt) ->
   let id_if = new_id_if () in  (* associe un numero distinct a chaque if ou if else *)
   let suite = "suite" ^ id_if in (* permet de nommer la suite associé à chaque if ou if else*)
   instr
   |> (compile_expr e false)
   |> ~:(Beq(A0, Zero, suite))  (* Si  A0 est nul saute à suite  *)
   |> (compile_stmt f d stmt)
   |> ~:(Label suite)
 | IfElse(e, stmt1, stmt2) ->
   let id_if = new_id_if () in (* associe un numero distinct a chaque if ou if else *)
   let sinon = "else"  ^ id_if in (* permet de nommer le sinon associé à chaque else*)
   let suite = "suite" ^ id_if in (* permet de nommer la suite associé à chaque if ou if else*)
   instr
   |> (compile_expr e false)
   |> ~:(Beq(A0, Zero, sinon)) (* Si  A0 est nul saute à sinon  *)
   |> (compile_stmt f d stmt1)
   |> ~:(J suite) (* saute aux instructions qui suivent le if else et permet donc d'éviter le else*)
   |> ~:(Label sinon)
   |> (compile_stmt f d stmt2)
   |> ~:(Label suite)
 | While (e, stmt) ->
   let id_while = new_id_while () in (* on donne un identifiant distinct à chaque while*)
   Stack.push id_while pile_while;  (* on ajoute l'identifiant a la pile des identifiants des whiles en cours*)
   let debwhile = "while" ^ id_while in (* On nomme différemment chaque fonction while*)
   let endwhile = "done"  ^ id_while in (* on nomme différemment chaque suite de while *)
   instr
   |> ~:(Label debwhile)
   |> (compile_expr e false)
   |> ~:(Beq(A0, Zero, endwhile)) (*Si A0 est nul saute a la suite du wile*)
   |> (compile_stmt f d stmt)
   |> ~:(J debwhile) (* On revient au début de la boucle while*)
   |> ~:(ignore(Stack.pop pile_while); Label endwhile) (* on enleve de la pile l'identifant du while avant de sortir du while*)
 | Continue -> J ("while" ^ (Stack.top pile_while)) :: instr (*On retourne au debut du  while dans lequle l'instruction est directement imbriquée *)
 | Break    -> J ("done"  ^ (Stack.top pile_while)) :: instr  (*On sort du while dans lequle l'instruction est directement imbriquée *)

(* On compte les defs et on retire le même
   nombre de variable de la pile que de defs *)
and compile_block f d lst instr = match lst with
 | [] -> rem_from_pile d instr
 | (Def _ as h, _) :: t -> instr |> (compile_stmt f (d+1) h) |> (compile_block f (d+1) t)
 | (h, _) :: t ->          instr |> (compile_stmt f d h)     |> (compile_block f d t)


let verify_arg_name args = (* On vérifie que les arguments ne sont pas des voids et deux fois le meme nom d'argument *)
  for i = 0 to (Array.length args) - 1 do
   if fst args.(i) = Void
   then failwith "void comme type d'un argument";
   for j = 0 to i - 1 do
    if snd args.(i) = snd args.(j)
    then failwith "redefinition de paramètre"
   done;
  done

(* func -> instruction list -> instruction list *)
let compile_obj obj instr = match obj with (* on compile les variables globales et les fonctions*)
 | V(typ, name) -> ( (* on compile les variables globales *) 
                    match typ with 
                      (* Ajoute au champ data un pointeur *)
                      | P _ -> push_data name; add_to_pile typ name instr
                      (* Ajoute sur la pile une variable *)
                      | _ -> add_to_pile typ name instr
                   )
 | F f ->  (* on compile les fonctions*)
   verify_arg_name f.args; (* On vérifie que les arguments ne sont pas des voids et deux fois le meme nom d'argument *)
   let nb_arg =  Array.length f.args in
   Hashtbl.add tab_fonctions f.name (f.typ, nb_arg); (*clé de la table de hachage le nom de la fonction et la valeur est le couple type nombre d'argument de la fonction*)
   Array.iter (fun (typ, name) -> push (typ, name, true)) f.args; (* On ajoute les arguments sur la pile *)
   let name_f= if f.name="main" then "main" else ("func_"^f.name)  in (*evite que les fonction interfère avec nos labels *)
   instr
   |> ~:(Label name_f)
   |> ~:(Move(A0, RA))  
   |> (add_to_pile Int "0RA") (*Sert a retenir la position de RA  *)
   |> (assign "0RA")
   |> (compile_stmt f 0 f.body)
   |> ~:(Lw(RA, Areg(0, SP)))
   |> (rem_from_pile (1 + nb_arg)) (* On enlève de la pile RA et les arguments*)
   |> ~:(Jr RA)


let rec compile_prog prog instr = match prog with
 | [] -> failwith "Programme vide"
 | [F f] when f.name = "main" -> J "main" :: List.rev_append (compile_obj (F f) instr) [Li(V0, 10); Syscall] (*On veut que la dernière fonction soit un main. On saute au main et on renverse notre liste d'instruction *)
 | [_] -> failwith "Dernier objet non main"
 | obj :: t -> compile_prog t (compile_obj obj instr)


(* Renvoie la liste des objets (type program) d'un code C en string *)
(* file = nom du %start dans parser.mly *)


let compile_program p ofile =
  let compiled_prog = compile_prog p [] in
  Ast_mips.print_program {
      data = !data_ptr;
      text = compiled_prog;
    } ofile