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

let ( ~: ) x acc = x :: acc

let convert (o : binop) : arith = match o with
 | Add -> Add
 | Sub -> Sub
 | Mul -> Mul
 | Div -> Div
 | Mod -> Mod
 | Leq -> Leq
 | Le  -> Le
 | Geq -> Geq
 | Ge  -> Ge
 | Neq -> Neq
 | Eq  -> Eq
 | And -> And
 | Or  -> Or

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
   |> (instr (Arith (convert o, A0, A1 (*1*), A0 (*2*))))
  | List of expr list
  | Ecall of string * expr array 