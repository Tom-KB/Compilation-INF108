
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
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
    | INTEGER of (
# 6 "parser.mly"
       (int)
# 33 "parser.ml"
  )
    | INT
    | IF
    | IDENT of (
# 7 "parser.mly"
       (string)
# 40 "parser.ml"
  )
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
  
end

include MenhirBasics

# 1 "parser.mly"
  
  (* Code OCaml *)
  open Ast

# 65 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_file) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: file. *)

  | MenhirState007 : (('s, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_file) _menhir_state
    (** State 007.
        Stack shape : typ IDENT.
        Start symbol: file. *)

  | MenhirState012 : ((('s, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_arg__, _menhir_box_file) _menhir_state
    (** State 012.
        Stack shape : typ IDENT loption(separated_nonempty_list(COMMA,arg)).
        Start symbol: file. *)

  | MenhirState013 : (('s, _menhir_box_file) _menhir_cell1_LCB, _menhir_box_file) _menhir_state
    (** State 013.
        Stack shape : LCB.
        Start symbol: file. *)

  | MenhirState015 : (('s, _menhir_box_file) _menhir_cell1_WHILE, _menhir_box_file) _menhir_state
    (** State 015.
        Stack shape : WHILE.
        Start symbol: file. *)

  | MenhirState017 : (('s, _menhir_box_file) _menhir_cell1_NOT, _menhir_box_file) _menhir_state
    (** State 017.
        Stack shape : NOT.
        Start symbol: file. *)

  | MenhirState018 : (('s, _menhir_box_file) _menhir_cell1_MINUS, _menhir_box_file) _menhir_state
    (** State 018.
        Stack shape : MINUS.
        Start symbol: file. *)

  | MenhirState019 : (('s, _menhir_box_file) _menhir_cell1_LP, _menhir_box_file) _menhir_state
    (** State 019.
        Stack shape : LP.
        Start symbol: file. *)

  | MenhirState022 : (('s, _menhir_box_file) _menhir_cell1_IDENT, _menhir_box_file) _menhir_state
    (** State 022.
        Stack shape : IDENT.
        Start symbol: file. *)

  | MenhirState029 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 029.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState031 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 031.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState033 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 033.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState035 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 035.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState037 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 037.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState039 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 039.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState041 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 041.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState043 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 043.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState045 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 045.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState047 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 047.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState049 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 049.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState051 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 051.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState053 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 053.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState055 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 055.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState062 : ((('s, _menhir_box_file) _menhir_cell1_WHILE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 062.
        Stack shape : WHILE expr.
        Start symbol: file. *)

  | MenhirState063 : (('s, _menhir_box_file) _menhir_cell1_RETURN, _menhir_box_file) _menhir_state
    (** State 063.
        Stack shape : RETURN.
        Start symbol: file. *)

  | MenhirState066 : (('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_state
    (** State 066.
        Stack shape : IF.
        Start symbol: file. *)

  | MenhirState068 : ((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 068.
        Stack shape : IF expr.
        Start symbol: file. *)

  | MenhirState070 : (('s, _menhir_box_file) _menhir_cell1_IDENT, _menhir_box_file) _menhir_state
    (** State 070.
        Stack shape : IDENT.
        Start symbol: file. *)

  | MenhirState078 : (((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_no_declare_stmt, _menhir_box_file) _menhir_state
    (** State 078.
        Stack shape : IF expr no_declare_stmt.
        Start symbol: file. *)

  | MenhirState081 : (('s, _menhir_box_file) _menhir_cell1_left_value, _menhir_box_file) _menhir_state
    (** State 081.
        Stack shape : left_value.
        Start symbol: file. *)

  | MenhirState090 : (('s, _menhir_box_file) _menhir_cell1_stmt, _menhir_box_file) _menhir_state
    (** State 090.
        Stack shape : stmt.
        Start symbol: file. *)

  | MenhirState097 : (('s, _menhir_box_file) _menhir_cell1_arg, _menhir_box_file) _menhir_state
    (** State 097.
        Stack shape : arg.
        Start symbol: file. *)

  | MenhirState099 : (('s, _menhir_box_file) _menhir_cell1_obj, _menhir_box_file) _menhir_state
    (** State 099.
        Stack shape : obj.
        Start symbol: file. *)


and ('s, 'r) _menhir_cell1_arg = 
  | MenhirCell1_arg of 's * ('s, 'r) _menhir_state * (Ast.t * string)

and ('s, 'r) _menhir_cell1_block = 
  | MenhirCell1_block of 's * ('s, 'r) _menhir_state * (Ast.stmt list) * Lexing.position

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_left_value = 
  | MenhirCell1_left_value of 's * ('s, 'r) _menhir_state * (Ast.left_value) * Lexing.position

and ('s, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_arg__ = 
  | MenhirCell1_loption_separated_nonempty_list_COMMA_arg__ of 's * ('s, 'r) _menhir_state * ((Ast.t * string) list)

and ('s, 'r) _menhir_cell1_no_declare_stmt = 
  | MenhirCell1_no_declare_stmt of 's * ('s, 'r) _menhir_state * (Ast.stmt)

and ('s, 'r) _menhir_cell1_obj = 
  | MenhirCell1_obj of 's * ('s, 'r) _menhir_state * (Ast.obj)

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast.stmt)

and ('s, 'r) _menhir_cell1_typ = 
  | MenhirCell1_typ of 's * ('s, 'r) _menhir_state * (Ast.t) * Lexing.position

and ('s, 'r) _menhir_cell1_IDENT = 
  | MenhirCell1_IDENT of 's * ('s, 'r) _menhir_state * (
# 7 "parser.mly"
       (string)
# 265 "parser.ml"
) * Lexing.position

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 7 "parser.mly"
       (string)
# 272 "parser.ml"
) * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LCB = 
  | MenhirCell1_LCB of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LP = 
  | MenhirCell1_LP of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state * Lexing.position

and _menhir_box_file = 
  | MenhirBox_file of (Ast.program) [@@unboxed]

let _menhir_action_01 =
  fun _1 _2 ->
    (
# 58 "parser.mly"
               ( (_1, _2) )
# 304 "parser.ml"
     : (Ast.t * string))

let _menhir_action_02 =
  fun _2 ->
    (
# 97 "parser.mly"
                  ( _2 )
# 312 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_03 =
  fun _1 ->
    (
# 101 "parser.mly"
                                   ( I _1 )
# 320 "parser.ml"
     : (Ast.expr))

let _menhir_action_04 =
  fun () ->
    (
# 102 "parser.mly"
                                   ( I 1 )
# 328 "parser.ml"
     : (Ast.expr))

let _menhir_action_05 =
  fun () ->
    (
# 103 "parser.mly"
                                   ( I 0 )
# 336 "parser.ml"
     : (Ast.expr))

let _menhir_action_06 =
  fun _1 ->
    (
# 104 "parser.mly"
                                   ( Val _1 )
# 344 "parser.ml"
     : (Ast.expr))

let _menhir_action_07 =
  fun _1 _3 ->
    let _2 = 
# 113 "parser.mly"
          ( Add )
# 352 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 357 "parser.ml"
     : (Ast.expr))

let _menhir_action_08 =
  fun _1 _3 ->
    let _2 = 
# 114 "parser.mly"
          ( Sub )
# 365 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 370 "parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun _1 _3 ->
    let _2 = 
# 115 "parser.mly"
          ( Mul )
# 378 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 383 "parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun _1 _3 ->
    let _2 = 
# 116 "parser.mly"
          ( Div )
# 391 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 396 "parser.ml"
     : (Ast.expr))

let _menhir_action_11 =
  fun _1 _3 ->
    let _2 = 
# 117 "parser.mly"
          ( Mod )
# 404 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 409 "parser.ml"
     : (Ast.expr))

let _menhir_action_12 =
  fun _1 _3 ->
    let _2 = 
# 118 "parser.mly"
          ( Leq )
# 417 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 422 "parser.ml"
     : (Ast.expr))

let _menhir_action_13 =
  fun _1 _3 ->
    let _2 = 
# 119 "parser.mly"
          ( Geq )
# 430 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 435 "parser.ml"
     : (Ast.expr))

let _menhir_action_14 =
  fun _1 _3 ->
    let _2 = 
# 120 "parser.mly"
          ( Ge  )
# 443 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 448 "parser.ml"
     : (Ast.expr))

let _menhir_action_15 =
  fun _1 _3 ->
    let _2 = 
# 121 "parser.mly"
          ( Le  )
# 456 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 461 "parser.ml"
     : (Ast.expr))

let _menhir_action_16 =
  fun _1 _3 ->
    let _2 = 
# 122 "parser.mly"
          ( Neq )
# 469 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 474 "parser.ml"
     : (Ast.expr))

let _menhir_action_17 =
  fun _1 _3 ->
    let _2 = 
# 123 "parser.mly"
          ( Eq  )
# 482 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 487 "parser.ml"
     : (Ast.expr))

let _menhir_action_18 =
  fun _1 _3 ->
    let _2 = 
# 124 "parser.mly"
          ( And )
# 495 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 500 "parser.ml"
     : (Ast.expr))

let _menhir_action_19 =
  fun _1 _3 ->
    let _2 = 
# 125 "parser.mly"
          ( Or  )
# 508 "parser.ml"
     in
    (
# 105 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 513 "parser.ml"
     : (Ast.expr))

let _menhir_action_20 =
  fun _2 ->
    (
# 106 "parser.mly"
                                   ( Moins _2 )
# 521 "parser.ml"
     : (Ast.expr))

let _menhir_action_21 =
  fun _2 ->
    (
# 107 "parser.mly"
                                   ( Not _2 )
# 529 "parser.ml"
     : (Ast.expr))

let _menhir_action_22 =
  fun _1 xs ->
    let _3 = 
# 229 "<standard.mly>"
    ( xs )
# 537 "parser.ml"
     in
    (
# 108 "parser.mly"
                                            ( Ecall(_1, Array.of_list _3) )
# 542 "parser.ml"
     : (Ast.expr))

let _menhir_action_23 =
  fun _2 ->
    (
# 109 "parser.mly"
               ( _2 )
# 550 "parser.ml"
     : (Ast.expr))

let _menhir_action_24 =
  fun _1 ->
    (
# 49 "parser.mly"
               ( _1 )
# 558 "parser.ml"
     : (Ast.program))

let _menhir_action_25 =
  fun _1 _2 _6 xs ->
    let _4 = 
# 229 "<standard.mly>"
    ( xs )
# 566 "parser.ml"
     in
    (
# 67 "parser.mly"
    ( { typ = _1; name = _2; args = Array.of_list _4; body = Block _6} )
# 571 "parser.ml"
     : (Ast.func))

let _menhir_action_26 =
  fun _1 ->
    (
# 71 "parser.mly"
          ( Var _1 )
# 579 "parser.ml"
     : (Ast.left_value))

let _menhir_action_27 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 587 "parser.ml"
     : (Ast.program))

let _menhir_action_28 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 595 "parser.ml"
     : (Ast.program))

let _menhir_action_29 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 603 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_30 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 611 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_31 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 619 "parser.ml"
     : ((Ast.t * string) list))

let _menhir_action_32 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 627 "parser.ml"
     : ((Ast.t * string) list))

let _menhir_action_33 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 635 "parser.ml"
     : (Ast.expr list))

let _menhir_action_34 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 643 "parser.ml"
     : (Ast.expr list))

let _menhir_action_35 =
  fun _1 ->
    (
# 83 "parser.mly"
                          ( _1 )
# 651 "parser.ml"
     : (Ast.stmt))

let _menhir_action_36 =
  fun _1 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 84 "parser.mly"
                          ( Block _1, _startpos )
# 660 "parser.ml"
     : (Ast.stmt))

let _menhir_action_37 =
  fun _3 _5 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 85 "parser.mly"
                                                       ( If(_3, fst _5), _startpos )
# 669 "parser.ml"
     : (Ast.stmt))

let _menhir_action_38 =
  fun _3 _5 _7 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 86 "parser.mly"
                                                       ( IfElse(_3, fst _5, fst _7), _startpos )
# 678 "parser.ml"
     : (Ast.stmt))

let _menhir_action_39 =
  fun _3 _5 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 87 "parser.mly"
                                        (While(_3,fst _5), _startpos)
# 687 "parser.ml"
     : (Ast.stmt))

let _menhir_action_40 =
  fun _1 ->
    (
# 62 "parser.mly"
         ( F _1 )
# 695 "parser.ml"
     : (Ast.obj))

let _menhir_action_41 =
  fun _1 _2 ->
    (
# 63 "parser.mly"
                        ( V(_1, _2) )
# 703 "parser.ml"
     : (Ast.obj))

let _menhir_action_42 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 711 "parser.ml"
     : (unit option))

let _menhir_action_43 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 719 "parser.ml"
     : (unit option))

let _menhir_action_44 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 727 "parser.ml"
     : ((Ast.t * string) list))

let _menhir_action_45 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 735 "parser.ml"
     : ((Ast.t * string) list))

let _menhir_action_46 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 743 "parser.ml"
     : (Ast.expr list))

let _menhir_action_47 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 751 "parser.ml"
     : (Ast.expr list))

let _menhir_action_48 =
  fun _1 _3 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 75 "parser.mly"
                       ( Assign(_1, _3), _startpos )
# 760 "parser.ml"
     : (Ast.stmt))

let _menhir_action_49 =
  fun _1 _startpos__1_ xs ->
    let _3 = 
# 229 "<standard.mly>"
    ( xs )
# 768 "parser.ml"
     in
    let _startpos = _startpos__1_ in
    (
# 76 "parser.mly"
                                            ( Scall(_1, Array.of_list _3), _startpos )
# 774 "parser.ml"
     : (Ast.stmt))

let _menhir_action_50 =
  fun _2 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 77 "parser.mly"
                ( Return _2, _startpos )
# 783 "parser.ml"
     : (Ast.stmt))

let _menhir_action_51 =
  fun _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 78 "parser.mly"
              (Continue,_startpos)
# 792 "parser.ml"
     : (Ast.stmt))

let _menhir_action_52 =
  fun _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 79 "parser.mly"
        (Break,_startpos)
# 801 "parser.ml"
     : (Ast.stmt))

let _menhir_action_53 =
  fun _1 _2 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 93 "parser.mly"
                        ( Def(_1, _2), _startpos )
# 810 "parser.ml"
     : (Ast.stmt))

let _menhir_action_54 =
  fun _1 ->
    (
# 94 "parser.mly"
                    ( _1 )
# 818 "parser.ml"
     : (Ast.stmt))

let _menhir_action_55 =
  fun () ->
    (
# 53 "parser.mly"
         ( Int )
# 826 "parser.ml"
     : (Ast.t))

let _menhir_action_56 =
  fun () ->
    (
# 54 "parser.mly"
         ( Char )
# 834 "parser.ml"
     : (Ast.t))

let _menhir_action_57 =
  fun () ->
    (
# 55 "parser.mly"
         ( Void )
# 842 "parser.ml"
     : (Ast.t))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | BREAK ->
        "BREAK"
    | CHAR ->
        "CHAR"
    | COMMA ->
        "COMMA"
    | CONTINUE ->
        "CONTINUE"
    | DIV ->
        "DIV"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | EQQ ->
        "EQQ"
    | FALSE ->
        "FALSE"
    | GE ->
        "GE"
    | GEQ ->
        "GEQ"
    | IDENT _ ->
        "IDENT"
    | IF ->
        "IF"
    | INT ->
        "INT"
    | INTEGER _ ->
        "INTEGER"
    | LCB ->
        "LCB"
    | LE ->
        "LE"
    | LEQ ->
        "LEQ"
    | LP ->
        "LP"
    | MINUS ->
        "MINUS"
    | MOD ->
        "MOD"
    | NEQ ->
        "NEQ"
    | NOT ->
        "NOT"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | RCB ->
        "RCB"
    | RETURN ->
        "RETURN"
    | RP ->
        "RP"
    | SEMICOLON ->
        "SEMICOLON"
    | TIMES ->
        "TIMES"
    | TRUE ->
        "TRUE"
    | VOID ->
        "VOID"
    | WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_102 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let _1 = _v in
      let _v = _menhir_action_24 _1 in
      MenhirBox_file _v
  
  let rec _menhir_run_100 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_obj -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let MenhirCell1_obj (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_28 x xs in
      _menhir_goto_list_obj_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_obj_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_102 _menhir_stack _v
      | MenhirState099 ->
          _menhir_run_100 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMICOLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_1, _2) = (_v, _v_0) in
              let _v = _menhir_action_41 _1 _2 in
              _menhir_goto_obj _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | LP ->
              let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v, _startpos) in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0, _startpos_1) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_57 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
              | INT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_55 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
              | CHAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_56 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
              | RP ->
                  let _v = _menhir_action_31 () in
                  _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_obj : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_obj (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_57 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState099 _tok
      | INT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_55 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState099 _tok
      | CHAR ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_56 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState099 _tok
      | EOF ->
          let _v = _menhir_action_27 () in
          _menhir_run_100 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_1, _2) = (_v, _v_0) in
          let _v = _menhir_action_01 _1 _2 in
          (match (_tok : MenhirBasics.token) with
          | COMMA ->
              let _menhir_stack = MenhirCell1_arg (_menhir_stack, _menhir_s, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_57 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState097 _tok
              | INT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_55 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState097 _tok
              | CHAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_56 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState097 _tok
              | _ ->
                  _eRR ())
          | RP ->
              let x = _v in
              let _v = _menhir_action_44 x in
              _menhir_goto_separated_nonempty_list_COMMA_arg_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_arg_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState097 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState007 ->
          _menhir_run_010_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_098 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_arg -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_arg (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_45 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_arg_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_010_spec_007 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_32 x in
      _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007
  
  and _menhir_run_011 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_loption_separated_nonempty_list_COMMA_arg__ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LCB ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | _ ->
          _eRR ()
  
  and _menhir_run_013 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LCB (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
      | VOID ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_57 () in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState013 _tok
      | RETURN ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
      | LCB ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
      | INT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_55 () in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState013 _tok
      | IF ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
      | IDENT _v ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState013
      | CONTINUE ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_51 _startpos__1_ in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState013 _tok
      | CHAR ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_3 in
          let _v = _menhir_action_56 () in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState013 _tok
      | BREAK ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_4 in
          let _v = _menhir_action_52 _startpos__1_ in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState013 _tok
      | RCB ->
          let _v = _menhir_action_29 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_04 () in
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015 _tok
          | NOT ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
          | MINUS ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
          | LP ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
          | INTEGER _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v in
              let _v = _menhir_action_03 _1 in
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015 _tok
          | IDENT _v ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_05 () in
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_WHILE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | RETURN ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | LCB ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | IF ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | IDENT _v_0 ->
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState062
          | CONTINUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_51 _startpos__1_ in
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
          | BREAK ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_52 _startpos__1_ in
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState029
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_09 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState081 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState019 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState033 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState031 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState070 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_082 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_left_value as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let MenhirCell1_left_value (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_48 _1 _3 _startpos__1_ in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQQ | GE | GEQ | LE | LEQ | MINUS | NEQ | OR | PLUS | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_07 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState033
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_11 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_017 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState017
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState017
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState017
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_NOT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | OR | RP | SEMICOLON ->
          let MenhirCell1_NOT (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_21 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_16 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState041 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState041 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState041
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState041 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQQ | GE | GEQ | LE | LEQ | MINUS | NEQ | OR | PLUS | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_08 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState035
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_10 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_018 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState018
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_MINUS (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_20 _2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_019 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LP (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LP (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_23 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_19 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_12 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_04 () in
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState022 _tok
          | NOT ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | MINUS ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | LP ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | INTEGER _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_1 in
              let _v = _menhir_action_03 _1 in
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState022 _tok
          | IDENT _v_3 ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState022
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_05 () in
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState022 _tok
          | RP ->
              let _v = _menhir_action_33 () in
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | AND | COMMA | DIV | EQQ | GE | GEQ | LE | LEQ | MINUS | MOD | NEQ | OR | PLUS | RP | SEMICOLON | TIMES ->
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_26 _1 in
          _menhir_goto_left_value _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_04 () in
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
          | NOT ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
          | MINUS ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
          | LP ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
          | INTEGER _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_1 in
              let _v = _menhir_action_03 _1 in
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
          | IDENT _v_3 ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState055
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_05 () in
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
          | _ ->
              _eRR ())
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let x = _v in
          let _v = _menhir_action_46 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_15 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_13 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_14 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState051 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState051 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState051
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState051 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_17 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_18 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState070 ->
          _menhir_run_024_spec_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState022 ->
          _menhir_run_024_spec_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_056 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_47 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_024_spec_070 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_34 x in
      _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_071 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_49 _1 _startpos__1_ xs in
      _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_simple_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_075 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_35 _1 in
          _menhir_goto_no_declare_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_no_declare_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState013 ->
          _menhir_run_091_spec_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState090 ->
          _menhir_run_091_spec_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState062 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState078 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState068 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_091_spec_013 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LCB -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_54 _1 in
      _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState013 _tok
  
  and _menhir_run_090 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | VOID ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_57 () in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState090 _tok
      | RETURN ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | LCB ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | INT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_55 () in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState090 _tok
      | IF ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | IDENT _v_2 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState090
      | CONTINUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_51 _startpos__1_ in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState090 _tok
      | CHAR ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_56 () in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState090 _tok
      | BREAK ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_52 _startpos__1_ in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState090 _tok
      | RCB ->
          let _v = _menhir_action_29 () in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMICOLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1, _2) = (_startpos, _v, _v_0) in
              let _v = _menhir_action_53 _1 _2 _startpos__1_ in
              _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | NOT ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | MINUS ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | LP ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | IDENT _v ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_50 _2 _startpos__1_ in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_04 () in
              _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
          | NOT ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
          | MINUS ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
          | LP ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
          | INTEGER _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v in
              let _v = _menhir_action_03 _1 in
              _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
          | IDENT _v ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_05 () in
              _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | RETURN ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | LCB ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | IF ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | IDENT _v_0 ->
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState068
          | CONTINUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_51 _startpos__1_ in
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
          | BREAK ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_52 _startpos__1_ in
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_04 () in
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
          | NOT ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
          | MINUS ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
          | LP ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
          | INTEGER _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_1 in
              let _v = _menhir_action_03 _1 in
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
          | IDENT _v_3 ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState070
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_05 () in
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
          | RP ->
              let _v = _menhir_action_33 () in
              _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | EQ ->
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_26 _1 in
          _menhir_goto_left_value _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_left_value : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState013 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_027_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState070 ->
          _menhir_run_027_spec_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState066 ->
          _menhir_run_027_spec_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState063 ->
          _menhir_run_027_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState015 ->
          _menhir_run_027_spec_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState017 ->
          _menhir_run_027_spec_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState018 ->
          _menhir_run_027_spec_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState019 ->
          _menhir_run_027_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState055 ->
          _menhir_run_027_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState053 ->
          _menhir_run_027_spec_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState051 ->
          _menhir_run_027_spec_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState049 ->
          _menhir_run_027_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState047 ->
          _menhir_run_027_spec_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState045 ->
          _menhir_run_027_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState043 ->
          _menhir_run_027_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState041 ->
          _menhir_run_027_spec_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState039 ->
          _menhir_run_027_spec_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState037 ->
          _menhir_run_027_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState035 ->
          _menhir_run_027_spec_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState033 ->
          _menhir_run_027_spec_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState031 ->
          _menhir_run_027_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState029 ->
          _menhir_run_027_spec_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState022 ->
          _menhir_run_027_spec_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_080 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_left_value (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | EQ ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_04 () in
              _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
          | NOT ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | MINUS ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | LP ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | INTEGER _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_1 in
              let _v = _menhir_action_03 _1 in
              _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
          | IDENT _v_3 ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState081
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_05 () in
              _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_027_spec_081 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_left_value -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
  
  and _menhir_run_027_spec_070 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
  
  and _menhir_run_027_spec_066 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
  
  and _menhir_run_027_spec_063 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
  
  and _menhir_run_027_spec_015 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_WHILE -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015 _tok
  
  and _menhir_run_027_spec_017 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
  
  and _menhir_run_027_spec_018 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_027_spec_019 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LP -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
  
  and _menhir_run_027_spec_055 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
  
  and _menhir_run_027_spec_053 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053 _tok
  
  and _menhir_run_027_spec_051 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState051 _tok
  
  and _menhir_run_027_spec_049 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
  
  and _menhir_run_027_spec_047 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
  
  and _menhir_run_027_spec_045 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
  
  and _menhir_run_027_spec_043 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
  
  and _menhir_run_027_spec_041 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState041 _tok
  
  and _menhir_run_027_spec_039 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
  
  and _menhir_run_027_spec_037 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
  
  and _menhir_run_027_spec_035 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_027_spec_033 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_027_spec_031 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
  
  and _menhir_run_027_spec_029 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_027_spec_022 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState022 _tok
  
  and _menhir_run_092 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_stmt -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_30 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState013 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState090 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_093 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LCB -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LCB (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_02 _2 in
      _menhir_goto_block _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_block : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState012 ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState013 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_095 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_arg__ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_loption_separated_nonempty_list_COMMA_arg__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, _2, _) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, _1, _) = _menhir_stack in
      let _6 = _v in
      let _v = _menhir_action_25 _1 _2 _6 xs in
      let _1 = _v in
      let _v = _menhir_action_40 _1 in
      _menhir_goto_obj _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_083 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let x = () in
          let _ = _menhir_action_43 x in
          _menhir_goto_option_SEMICOLON_ _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | BREAK | CHAR | CONTINUE | ELSE | IDENT _ | IF | INT | LCB | RCB | RETURN | VOID | WHILE ->
          let _ = _menhir_action_42 () in
          _menhir_goto_option_SEMICOLON_ _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_option_SEMICOLON_ : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_block -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_block (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
      let _v = _menhir_action_36 _1 _startpos__1_ in
      _menhir_goto_no_declare_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_091_spec_090 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_54 _1 in
      _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState090 _tok
  
  and _menhir_run_086 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_WHILE, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, _3) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let _5 = _v in
      let _v = _menhir_action_39 _3 _5 _startpos__1_ in
      _menhir_goto_no_declare_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_079 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_no_declare_stmt -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_no_declare_stmt (_menhir_stack, _, _5) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, _3) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let _7 = _v in
      let _v = _menhir_action_38 _3 _5 _7 _startpos__1_ in
      _menhir_goto_no_declare_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_077 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_stack = MenhirCell1_no_declare_stmt (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
          | RETURN ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
          | LCB ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
          | IF ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
          | IDENT _v_0 ->
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState078
          | CONTINUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_51 _startpos__1_ in
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
          | BREAK ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_52 _startpos__1_ in
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
          | _ ->
              _eRR ())
      | BREAK | CHAR | CONTINUE | IDENT _ | IF | INT | LCB | RCB | RETURN | VOID | WHILE ->
          let MenhirCell1_expr (_menhir_stack, _, _3) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_37 _3 _5 _startpos__1_ in
          _menhir_goto_no_declare_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_024_spec_022 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_34 x in
      _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_025 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, _1, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_22 _1 xs in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_57 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | INT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_55 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | CHAR ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_56 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | EOF ->
          let _v = _menhir_action_27 () in
          _menhir_run_102 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let file =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_file v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
