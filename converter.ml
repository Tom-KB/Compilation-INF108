let _ = Printexc.record_backtrace true

open Ast
open Ast_mips
open Printf

exception VarUndef of string

(* représente le champ data pour les pointeurs *)
let data_ptr = ref []
let push_data x = (data_ptr := Word(x, 0) :: !data_ptr)
let pop_data () = (data_ptr := try List.tl !data_ptr with _ -> failwith "data ptr vide")

(* représente la pile SP *)
let pile = ref []
let push x = (pile := x :: !pile)
let pop () = (pile := try List.tl !pile with _ -> failwith "pile vide")

(* table de hachage sui stocke les fonctions *)
let tab_fonctions = Hashtbl.create 13

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

(* Retourne vrai si la variable x est un pointeur *)
let rec var_type x = function
  | [] -> raise (VarUndef x)
  | (typ, h, _) :: t ->
     if h = x
     then typ
     else var_type x t

let rec index x acc = function
  | [] -> raise (VarUndef x)
  | (_, h, b) :: t ->
     if h = x
     then (if b then acc else failwith "variable non assigné")
     else index x (acc+1) t

(* renvoie la valeur associé à la variable x*)
let value (x : string) instr = match var_type x !pile with
  | P (P _) -> Lw(A0, Areg(0, T 0)) :: Lw(T 0, Alab x) :: instr
  | P _ -> La(T 0, Alab x) :: instr
  | _ -> Lw(A0, Areg(4*index x 0 !pile, SP)) :: instr


(* augmente le taille de la pile *)
let add_to_pile typ x instr = push (typ, x, false); Addi(SP, SP, -4) :: instr

(* assign x v : assigne à x la valeur v,
   en mettant à jour le booléen qui indique si la variable est assigné*)
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
    | P (P _) -> Sw(T 0, Alab x) :: instr
    | P _ -> Sw(A0, Alab x) :: instr
    | _ -> Sw(A0, Areg(4 * !cnt, SP)) :: instr

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
  | Val (Var x) -> value x instr
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
     |> (add_to_pile Int "1") (* on ajoute le res de e1 sous forme de variable nommé 1 *)
     |> (assign "1")
     |> (compile_expr e2)
     |> ~:(Lw(A1, Areg (0, SP))) (* on met le res de e1 dans A1 *)
     |> (rem_from_pile 1)
     |> (apply o A1 A0)
  | Ecall(s, args) ->
     let typ, nb = Hashtbl.find tab_fonctions s in
     assert (typ <> Void);
     assert (Array.length args = nb);
     instr
     |> (fun instr' ->
         Array.fold_left (fun instr'' e ->
          instr''
          |> (compile_expr e)
          |> ~:(Addi(SP, SP, -4))
          |> ~:(Sw(A0, Areg(0, SP)))
        ) instr' args
      )
     |> ~:(Jal s)
  | ValPointer e -> failwith "ValPointer"
  | Address lv -> failwith "Adress"


let print = List.rev_append [Li(V0, 1); Syscall; Li(V0, 11); Li(A0, 10); Syscall]
let return n = List.rev_append [Lw(RA, Areg(0, SP)); Addi(SP, SP, 4*(1+n)); Jr RA]

(* Compilation d'un stmt *)
(* stmt -> bool -> int -> instruction list -> instruction list *)
(* void est booléen indiquant si la fonction qui contient stmt est void
   d est le nombre de variables locales définies avant *)
let rec compile_stmt f d stmt_node instr = match stmt_node with
  | Def(P t, x) -> push_data x; add_to_pile (P t) x instr
  | Def(typ, x) -> add_to_pile typ x instr
  | Assign(Var x, exp) -> instr |> (compile_expr exp) |> (assign x)
  | Scall("print_int", args) ->
     assert (Array.length args = 1);
     instr |> (compile_expr args.(0)) |> print
  | Scall(s, args) ->
     let typ, nb = Hashtbl.find tab_fonctions s in
     assert (typ = Void);
     assert (Array.length args = nb);
     instr
     |> (fun instr' ->
         Array.fold_left (fun instr'' e ->
          instr''
          |> (compile_expr e)
          |> ~:(Addi(SP, SP, -4))
          |> ~:(Sw(A0, Areg(0, SP)))
        ) instr' args
      )
     |> ~:(Jal s)
  | Block lst -> compile_block f 0 lst instr
  | Return e ->
    if f.typ = Void
    then failwith "Return in void function"
    else instr
          |> (compile_expr e)
          |> ~:(Addi(SP, SP, d*4))
          |> (return (Array.length f.args))
  | If(e, stmt) ->
     let id_if = new_id_if () in
     let suite = "suite" ^ id_if in
     instr
     |> (compile_expr e)
     |> ~:(Beq(A0, Zero, suite))
     |> (compile_stmt f d stmt)
     |> ~:(Label suite)
  | IfElse(e, stmt1, stmt2) ->
     let id_if = new_id_if () in
     let sinon = "else"  ^ id_if in
     let suite = "suite" ^ id_if in
     instr
     |> (compile_expr e)
     |> ~:(Beq(A0, Zero, sinon))
     |> (compile_stmt f d stmt1)
     |> ~:(J suite)
     |> ~:(Label sinon)
     |> (compile_stmt f d stmt2)
     |> ~:(Label suite)
  | While (e, stmt) ->
      let id_while = new_id_while () in
      Stack.push id_while pile_while;
      let debwhile = "while" ^ id_while in
      let endwhile = "done"  ^ id_while in
      instr
      |> ~:(Label debwhile)
      |> (compile_expr e)
      |> ~:(Beq(A0, Zero, endwhile))
      |> (compile_stmt f d stmt)
      |> ~:(J debwhile)
      |> ~:(ignore(Stack.pop pile_while); Label endwhile)
   | Continue -> J ("while" ^ (Stack.top pile_while)) :: instr
   | Break    -> J ("done"  ^ (Stack.top pile_while)) :: instr

(* On compte les defs et on retire le même
   nombre de variable de la pile que de defs *)
and compile_block f d lst instr = match lst with
 | [] -> rem_from_pile d instr     
 | (Def _ as h, _) :: t -> instr |> (compile_stmt f (d+1) h) |> (compile_block f (d+1) t)
 | (h, _) :: t -> instr |> (compile_stmt f d h) |> (compile_block f d t)


let verify_arg_name args =
  for i = 0 to (Array.length args) - 1 do
    if fst args.(i) = Void
    then failwith "void type in argument";
    for j = 0 to i - 1 do
      if snd args.(i) = snd args.(j)
      then failwith "redefinition of parameter"
    done;
  done

(* func -> instruction list -> instruction list *)
let compile_obj obj instr = match obj with
  | V(typ, name) -> add_to_pile typ name instr
  | F f ->
    verify_arg_name f.args;
    let nb_arg =  Array.length f.args in
    Hashtbl.add tab_fonctions f.name (f.typ, nb_arg);
    Array.iter (fun (typ, name) -> push (typ, name, true)) f.args;
    instr
      |> ~:(Label f.name)
      |> ~:(Move(A0, RA))
      |> (add_to_pile Int "0RA")
      |> (assign "0RA")
      |> (compile_stmt f 0 f.body)
      |> ~:(Lw(RA, Areg(0, SP)))
      |> (rem_from_pile (1 + nb_arg))
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
      data = !data_ptr;
      text = compile_prog p [];
    } ofile
