(* Production de code pour notre langage *)
open Printf
open Mips
open Ast

(* Exception à lever quand une variable est utilisée sans être définie *)
exception VarUndef of string

(* représente la pile SP *)
let pile = ref []
let push x = (pile := x :: !pile)
let pop () = (pile := List.tl !pile)

let rec index x acc = function
  | [] -> raise (VarUndef x)
  | h :: t -> if h = x then acc else index x (acc+1) t

(* renvoie la valeur associé à la variable x*)
let value (x : string) = Areg (4*index x 0 !pile, SP)

(* envoie A0 sur la pile *)
let add_to_pile x = push x; List.rev_append [Arithi (Add, SP, SP, -4); Sw (A0, Areg (0, SP))]
(* retire le haut de la pile *)
let rem_from_pile acc = pop (); Arithi (Add, SP, SP, 4) :: acc

let instr x acc = x :: acc

let convert (o : binop) : arith = match o with
 | Add -> Add
 | Sub -> Sub
 | Mul -> Mul
 | Div -> Div

(* Compilation d'une expression *)
(* resultat stocké dans A0 *)
(* on mets les instructions dans l'ordre inverse pour être tail récursif *)
let rec compile_expr ex acc = match ex with
 | Cst i -> Li (A0, i) :: acc
 | Var x -> Lw (A0, value x) :: acc
 | Binop (o, e1, e2) ->
   acc
   |> (compile_expr e1)
   |> (add_to_pile "1")
   |> (compile_expr e2)
   |> (instr (Lw (A1, Areg (0, SP))))
   |> rem_from_pile
   |> (instr (Arith (convert o, A0, A1 (*1*), A0 (*2*))))
 | Letin (x, e1, e2) ->
   acc
   |> (compile_expr e1)
   |> (add_to_pile x)
   |> (compile_expr e2)
   |> rem_from_pile
 | Call (f, e) ->
   acc
   |> (compile_expr e) (* e va dans A0 *)
   |> (instr (Jal f))

(* print int et print newline *)
let print = List.rev_append [Li (V0, 1); Syscall; Li (V0, 11); Li (A0, 10); Syscall]
(* read *)
let read = List.rev_append [Li (V0, 5); Syscall; Move (A0, V0)]

(* Compilation du programme *)
let rec compile_prog func code = function
  | [] ->
    (* on mets les fonctions à la fin et on jump
       après la section des fonctions à la fin du code*)
    (J "main") :: List.rev_append func
     (
       (List.rev_append code
         [Li (V0, 10); Syscall]))
  | Print e :: t ->
    compile_prog func (code
                       |> (compile_expr e)
                       |> print
     ) t
  | Read x :: t->
    compile_prog func (code
                       |> read
                       |> (add_to_pile x)
     ) t
  | Function (f, x, e) :: t ->
    compile_prog (func
                  |> (instr (Label f))
                  |> (add_to_pile x) (* variable muette *)
                  |> (instr (Move (A0, RA)))
                  |> (add_to_pile "0RA") (* adresse de l'instr suivante *)
                  |> (compile_expr e)
                  |> (instr (Lw (A1, Areg (0, SP)))) (* On met dans A1 l'intruction suivante *)
                  |> rem_from_pile (* on supprime l'adresse de l'instr suivante *)
                  |> rem_from_pile (* on supprime la variable muette *)
                  |> (instr (Jr A1))
     ) code t

(* Compile le programme p et enregistre le code dans le fichier ofile *)
let compile_program p ofile =
  let code = compile_prog [] [] p in
  let p =
    { text = (Label "main") :: code ;
      data = []
    }
  in
  Mips.print_program p ofile;
