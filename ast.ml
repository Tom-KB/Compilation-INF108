type pos = Lexing.position


type program = obj list
and obj = F of func | V of t * string
and func = { typ : t; name : string; args : (t * string) array; body : stmt_node }
and t = Void | Int | Char | P of t
and stmt = stmt_node * pos
and stmt_node =
  | Def of t * string (* int x; *)
  | Assign of expr * expr (* x = 1; *)
  | Scall of string * expr array (* print_int(1); *)
  | Block of stmt list
  | Return of expr (* return 1 *)
  | If of expr* stmt_node
  | IfElse of expr * stmt_node * stmt_node
  | While of expr * stmt_node
  | Continue
  | Break
and left_value =
  | Var of string
and expr =
  | ValPointer of expr
  | Address of left_value
  | I of int
  | Val of left_value
  | Moins of expr
  | Not of expr
  | Op of binop * expr * expr
  | Ecall of string * expr array
and binop = Add | Sub | Mul | Div | Mod | Leq | Le | Geq | Ge | Neq | Eq | And | Or


