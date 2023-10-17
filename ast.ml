type pos = Lexing.position


type program = obj list
and obj = F of func | Fv of func_v | V of t * string
and func = { typ : t; name : string; args : (t * string) array; body : stmt }
and func_v = { name_v : string; args_v : (t * string) array; body_v : stmt }
and t = Int | Char | P of t
and stmt = stmt_node * pos
and stmt_node =
  | Def of t * string (* int x; *)
  | Assign of left_value * expr (* x = 1; *)
  | Scall of string * expr array (* print_int(1); *)
  | Block of stmt list
  | Return of expr
and left_value =
  | Var of string
and expr =
  | I of int
  | Val of left_value
  | Moins of expr
  | Not of expr
  | Op of binop * expr * expr
  | List of expr list
  | Ecall of string * expr array
and binop = Add | Sub | Mul | Div | Mod | Leq | Le | Geq | Ge | Neq | Eq | And | Or


