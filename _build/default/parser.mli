
(* The type of tokens. *)

type token = 
  | WHILE
  | VOID
  | TRUE
  | TIMES
  | SEMICOLON
  | RP
  | RETURN
  | RCB
  | PLUS
  | OR
  | NOT
  | NEQ
  | MOD
  | MINUS
  | LP
  | LEQ
  | LE
  | LCB
  | INTEGER of (int)
  | INT
  | IF
  | IDENT of (string)
  | GEQ
  | GE
  | FALSE
  | EQQ
  | EQ
  | EOF
  | ELSE
  | DIV
  | CONTINUE
  | COMMA
  | CHAR
  | BREAK
  | AND
  | AMP

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
