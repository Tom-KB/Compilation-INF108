(* représente la pile SP *)
open Parser

let pile = ref []
let push x = (pile := x :: !pile)
let pop () = (pile := List.tl !pile)

let rec index x acc = function
  | [] -> raise (VarUndef x)
  | (b, h) :: t -> if h = x then (if b then acc else failwith "") else index x (acc+1) t

(* renvoie la valeur associé à la variable x*)
let value (x : string) = Areg (4*index x 0 !pile, SP)

(* envoie A0 sur la pile *)
let add_to_pile x = push (false, x); List.rev_append [Arithi (Add, SP, SP, -4)]
(* retire le haut de la pile *)
let rem_from_pile acc = pop (); Arithi (Add, SP, SP, 4) :: acc

let ( ~: ) x acc = x :: acc

let convert (o : binop) : arith = List.rev_append (match o with
 | Add -> [Add (A0, A1, A0)]
 | Sub -> [Sub (A0, A1, A0)]
 | Mul -> [Mult (A1, A0); Move (A0, Lo)]
 | Div -> [Div (A1, A0); Move (A0, Lo)]
 | Mod -> [Div (A1, A0); Move (A0, Hi)]
 | Leq -> [Sub (A0, A1, A0); Slti (A0, A0, 1)]
 | Le  -> [Slt (A0, A1, A0)]
 | Geq -> [Sub (A0, A0, A1); Slti (A0, A0, 1)]
 | Ge  -> [Slt (A0, A0, A1)]
 | Neq -> [Xor (A0, A1, A0)]
 | Eq  -> [Xor (A0, A1, A0); Mult (A0, A0); Slt (A0, Zero, Lo)]
 | And -> [And (A0, A1, A0)]
 | Or  -> [Or (A0, A1, A0)])

let rec compile_expr ex acc = match ex with
  | I of i -> Li (A0, i) :: acc
  | Val x -> Lw (A0, value x) :: acc
  | Moins e -> acc |> (compile_expr e) |> (~:(Arithi (Mul, A0, A0, -1))
  | Not e -> acc |> (compile_expr e) |>  (~:(Slti (T 1, A0, 0)) |> (~:(Slt (A0, Zero, A0)) |> (~:(Nor (A0, A0, T 1))
  | Op (o, e1, e2) ->
  acc
   |> (compile_expr e1)
   |> (add_to_pile "1")
   |> (compile_expr e2)
   |> (instr (Lw (A1, Areg (0, SP))))
   |> rem_from_pile
   |> (convert o)
  | Ecall (f, e) ->
    acc
    |> (compile_expr e.(0))
    |> (~:(Jal f))