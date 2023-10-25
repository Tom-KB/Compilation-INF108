open Ast
open Ast_mips

exception VarUndef of string
(* représente la pile SP *)
let pile = ref []
let push x = (pile := x :: !pile)
let pop () = (pile := List.tl !pile)
let tab_fonctions= Hashtbl.create 97

let rec index x acc = function
  | [] -> failwith "Erreur" (*raise (VarUndef x)*)
  | (b, h) :: t ->
    if h = x
    then (if b then acc else failwith "problème variable non définie")
    else index x (acc+1) t

(* renvoie la valeur associé à la variable x*)
let value (x : string) = Areg (4*index x 0 !pile, SP)

(* envoie A0 sur la pile *)
let add_to_pile x acc = push (false, x); Addi(SP, SP, -4) :: acc

(* assigné une valeur*)
(*assign x v : assigne à x la valeur v,
en mettant la valeur du booléen associé au premier x à true dans la pile*)
let assign x acc =
  let cnt = ref 0 in
  let rec modifielist = function
    | [] -> raise (VarUndef(x))
    | (_, y) :: t when y = x -> (true, y) :: t
    |  h :: t-> incr cnt; h :: modifielist t
  in
  pile := modifielist !pile; Sw(A0, Areg(4* !cnt, SP)) :: acc

(* retire le haut de la pile *)
let rem_from_pile acc = pop (); Addi(SP, SP, 4) :: acc

let ( ~: ) x acc = x :: acc

let apply (o : binop) r1 r2 =
  List.rev_append
   (match o with
    | Add -> [Add  (A0, r1, r2)]
    | Sub -> [Sub  (A0, r1, r2)]
    | Mul -> [Mult (r1, r2); Mflo (A0)]
    | Div -> [Div  (r1, r2); Mflo (A0)]
    | Mod -> [Div  (r1, r2); Mfhi(A0)]
    | Leq -> [Sub  (A0, r1, r2); Slti (A0, A0, 1)]
    | Le  -> [Slt  (A0, r1, r2)]
    | Geq -> [Sub  (A0, r2, r1); Slti (A0, A0, 1)]
    | Ge  -> [Slt  (A0, r2, r1)]
    | Neq -> [Xor  (A0, r1, r2)]
    | Eq  -> [Xor  (A0, r1, r2); Mult (A0, A0); Mflo(A0); Slt (A0, Zero, A0)]
    | And -> [And  (A0, r1, r2)]
    | Or  -> [Or   (A0, r1, r2)])


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
let rec compile_expr ex acc = match ex with
 | I i -> Li (A0, i) :: acc
 | Val (Var x) -> Lw (A0, value x) :: acc
 | Moins e -> acc |> (compile_expr e) |> (~:(Sub(A0, Zero, A0)))
 | Not e ->
   acc
   |> (compile_expr e)
   |> (~:(Slti (T 1, A0, 0)))
   |> (~:(Slt (A0, Zero, A0)))
   |> (~:(Nor (A0, A0, T 1)))
 | Op (o, e1, e2) ->
   acc
   |> (compile_expr e1)
   |> (add_to_pile "1") (* on ajoute le res de e1 sous forme de variable nommé 1 *)
   |> (assign "1")
   |> (compile_expr e2)
   |> (~:(Lw (A1, Areg (0, SP)))) (* on met le res de e1 dans A1 *)
   |> rem_from_pile
   |> (apply o A1 A0)
 | Ecall (f, arg) -> assert ((Hashtbl.find tab_fonctions f) <> Void);
   acc
   |> (compile_expr arg.(0))
   |> (~:(Jal f))

(* print int et print newline (code ascii de newline =  11) *)
let print = List.rev_append [Li (V0, 1); Syscall; Li (V0, 11); Li (A0, 10); Syscall]

let if_def s= match s with  
  | Def(_)-> 1
  | _ -> 0
(* Compilation d'un stmt *)
(* stmt -> instruction list -> instruction list *)
(* TODO : Le return, le Scall, la verification de type avec Def et Assign*)
let rec compile_stmt stmt_node acc = match stmt_node with
 | Def (_, x) -> acc |> (add_to_pile x) 
 | Assign (Var x, exp) -> acc |> (compile_expr exp) |> (assign x)
 | Scall ("print_int", [|e|]) -> acc |> (compile_expr e) |> print
 | Scall (f, args) -> assert ((Hashtbl.find tab_fonctions f) = Void);  acc
    |> (compile_expr args.(0))
    |> (~:(Jal f))
 | Block lst -> let def, acc' = List.fold_left (fun (def, acc') (s, _) -> (def+if_def s,compile_stmt s acc')) (0,acc) lst in
  List.fold_left (fun x _-> rem_from_pile x) acc' (List.init def (fun i-> i))
 | Return _ -> failwith "TODO"


(* TODO *)
(* func -> instruction list -> instruction list *)
let compile_obj objet instructions= match objet with
    | F(f) ->Hashtbl.add tab_fonctions f.name f.typ; instructions
      |> ~:(Label f.name)
      |> (add_to_pile (snd f.args.(0)))
      |> (assign (snd f.args.(0)))
      |> ~: (Move(A0, RA))
      |> (add_to_pile "0RA")
      |> (assign "0RA")
      |> (compile_stmt (f.body))
      |> ~:(Lw(RA, Areg(0, SP)))
      |> rem_from_pile
      |>  rem_from_pile
      |> ~: (Jr RA)
    | V( _t, _name) -> failwith "pas fait"


(* Renvoie la liste des objets (type program) d'un code C en string *)
(* file = nom du %start dans parser.mly *)


let compile_program s ofile =
  let p= {data= []; text=(J "main") :: List.rev (List.fold_left (fun a b -> compile_obj b a) [] (s))}
in
Ast_mips.print_program p ofile