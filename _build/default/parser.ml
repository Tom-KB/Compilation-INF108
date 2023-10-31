
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
    | AMP
  
end

include MenhirBasics

# 1 "parser.mly"
  
  (* Code OCaml *)
  open Ast

# 66 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_file) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: file. *)

  | MenhirState008 : (('s, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_state
    (** State 008.
        Stack shape : typ IDENT LP.
        Start symbol: file. *)

  | MenhirState013 : ((('s, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_arg__, _menhir_box_file) _menhir_state
    (** State 013.
        Stack shape : typ IDENT LP loption(separated_nonempty_list(COMMA,arg)).
        Start symbol: file. *)

  | MenhirState014 : (('s, _menhir_box_file) _menhir_cell1_LCB, _menhir_box_file) _menhir_state
    (** State 014.
        Stack shape : LCB.
        Start symbol: file. *)

  | MenhirState016 : (('s, _menhir_box_file) _menhir_cell1_WHILE _menhir_cell0_LP, _menhir_box_file) _menhir_state
    (** State 016.
        Stack shape : WHILE LP.
        Start symbol: file. *)

  | MenhirState018 : (('s, _menhir_box_file) _menhir_cell1_TIMES, _menhir_box_file) _menhir_state
    (** State 018.
        Stack shape : TIMES.
        Start symbol: file. *)

  | MenhirState019 : (('s, _menhir_box_file) _menhir_cell1_NOT, _menhir_box_file) _menhir_state
    (** State 019.
        Stack shape : NOT.
        Start symbol: file. *)

  | MenhirState020 : (('s, _menhir_box_file) _menhir_cell1_MINUS, _menhir_box_file) _menhir_state
    (** State 020.
        Stack shape : MINUS.
        Start symbol: file. *)

  | MenhirState021 : (('s, _menhir_box_file) _menhir_cell1_LP, _menhir_box_file) _menhir_state
    (** State 021.
        Stack shape : LP.
        Start symbol: file. *)

  | MenhirState024 : (('s, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_state
    (** State 024.
        Stack shape : IDENT LP.
        Start symbol: file. *)

  | MenhirState026 : (('s, _menhir_box_file) _menhir_cell1_AMP, _menhir_box_file) _menhir_state
    (** State 026.
        Stack shape : AMP.
        Start symbol: file. *)

  | MenhirState034 : (('s, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_TIMES, _menhir_box_file) _menhir_state
    (** State 034.
        Stack shape : expr TIMES.
        Start symbol: file. *)

  | MenhirState036 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 036.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState038 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 038.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState040 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 040.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState042 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 042.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState044 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 044.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState046 : (('s, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_MINUS, _menhir_box_file) _menhir_state
    (** State 046.
        Stack shape : expr MINUS.
        Start symbol: file. *)

  | MenhirState048 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 048.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState050 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 050.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState052 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 052.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState054 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 054.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState056 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 056.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState058 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 058.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState060 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 060.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState068 : ((('s, _menhir_box_file) _menhir_cell1_WHILE _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 068.
        Stack shape : WHILE LP expr.
        Start symbol: file. *)

  | MenhirState069 : (('s, _menhir_box_file) _menhir_cell1_RETURN, _menhir_box_file) _menhir_state
    (** State 069.
        Stack shape : RETURN.
        Start symbol: file. *)

  | MenhirState072 : (('s, _menhir_box_file) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_file) _menhir_state
    (** State 072.
        Stack shape : IF LP.
        Start symbol: file. *)

  | MenhirState074 : ((('s, _menhir_box_file) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 074.
        Stack shape : IF LP expr.
        Start symbol: file. *)

  | MenhirState076 : (('s, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_state
    (** State 076.
        Stack shape : IDENT LP.
        Start symbol: file. *)

  | MenhirState084 : (((('s, _menhir_box_file) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_no_declare_stmt, _menhir_box_file) _menhir_state
    (** State 084.
        Stack shape : IF LP expr no_declare_stmt.
        Start symbol: file. *)

  | MenhirState087 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 087.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState096 : (('s, _menhir_box_file) _menhir_cell1_stmt, _menhir_box_file) _menhir_state
    (** State 096.
        Stack shape : stmt.
        Start symbol: file. *)

  | MenhirState103 : (('s, _menhir_box_file) _menhir_cell1_arg, _menhir_box_file) _menhir_state
    (** State 103.
        Stack shape : arg.
        Start symbol: file. *)

  | MenhirState105 : (('s, _menhir_box_file) _menhir_cell1_obj, _menhir_box_file) _menhir_state
    (** State 105.
        Stack shape : obj.
        Start symbol: file. *)


and ('s, 'r) _menhir_cell1_arg = 
  | MenhirCell1_arg of 's * ('s, 'r) _menhir_state * (Ast.t * string)

and ('s, 'r) _menhir_cell1_block = 
  | MenhirCell1_block of 's * ('s, 'r) _menhir_state * (Ast.stmt list) * Lexing.position

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr) * Lexing.position

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

and ('s, 'r) _menhir_cell1_AMP = 
  | MenhirCell1_AMP of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_IDENT = 
  | MenhirCell1_IDENT of 's * ('s, 'r) _menhir_state * (
# 7 "parser.mly"
       (string)
# 276 "parser.ml"
) * Lexing.position

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 7 "parser.mly"
       (string)
# 283 "parser.ml"
) * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LCB = 
  | MenhirCell1_LCB of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LP = 
  | MenhirCell1_LP of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_LP = 
  | MenhirCell0_LP of 's * Lexing.position

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_MINUS = 
  | MenhirCell0_MINUS of 's * Lexing.position

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_TIMES = 
  | MenhirCell1_TIMES of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_TIMES = 
  | MenhirCell0_TIMES of 's * Lexing.position

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state * Lexing.position

and _menhir_box_file = 
  | MenhirBox_file of (Ast.program) [@@unboxed]

let _menhir_action_01 =
  fun _1 _2 ->
    (
# 61 "parser.mly"
               ( (_1, _2) )
# 327 "parser.ml"
     : (Ast.t * string))

let _menhir_action_02 =
  fun _2 ->
    (
# 99 "parser.mly"
                  ( _2 )
# 335 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_03 =
  fun _1 ->
    (
# 103 "parser.mly"
                                   ( I _1 )
# 343 "parser.ml"
     : (Ast.expr))

let _menhir_action_04 =
  fun () ->
    (
# 104 "parser.mly"
                                   ( I 1 )
# 351 "parser.ml"
     : (Ast.expr))

let _menhir_action_05 =
  fun () ->
    (
# 105 "parser.mly"
                                   ( I 0 )
# 359 "parser.ml"
     : (Ast.expr))

let _menhir_action_06 =
  fun _1 ->
    (
# 106 "parser.mly"
                                   ( Val _1 )
# 367 "parser.ml"
     : (Ast.expr))

let _menhir_action_07 =
  fun _1 _3 ->
    let _2 = 
# 117 "parser.mly"
          ( Add )
# 375 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 380 "parser.ml"
     : (Ast.expr))

let _menhir_action_08 =
  fun _1 _3 ->
    let _2 = 
# 118 "parser.mly"
          ( Sub )
# 388 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 393 "parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun _1 _3 ->
    let _2 = 
# 119 "parser.mly"
          ( Mul )
# 401 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 406 "parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun _1 _3 ->
    let _2 = 
# 120 "parser.mly"
          ( Div )
# 414 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 419 "parser.ml"
     : (Ast.expr))

let _menhir_action_11 =
  fun _1 _3 ->
    let _2 = 
# 121 "parser.mly"
          ( Mod )
# 427 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 432 "parser.ml"
     : (Ast.expr))

let _menhir_action_12 =
  fun _1 _3 ->
    let _2 = 
# 122 "parser.mly"
          ( Leq )
# 440 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 445 "parser.ml"
     : (Ast.expr))

let _menhir_action_13 =
  fun _1 _3 ->
    let _2 = 
# 123 "parser.mly"
          ( Geq )
# 453 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 458 "parser.ml"
     : (Ast.expr))

let _menhir_action_14 =
  fun _1 _3 ->
    let _2 = 
# 124 "parser.mly"
          ( Ge  )
# 466 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 471 "parser.ml"
     : (Ast.expr))

let _menhir_action_15 =
  fun _1 _3 ->
    let _2 = 
# 125 "parser.mly"
          ( Le  )
# 479 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 484 "parser.ml"
     : (Ast.expr))

let _menhir_action_16 =
  fun _1 _3 ->
    let _2 = 
# 126 "parser.mly"
          ( Neq )
# 492 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 497 "parser.ml"
     : (Ast.expr))

let _menhir_action_17 =
  fun _1 _3 ->
    let _2 = 
# 127 "parser.mly"
          ( Eq  )
# 505 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 510 "parser.ml"
     : (Ast.expr))

let _menhir_action_18 =
  fun _1 _3 ->
    let _2 = 
# 128 "parser.mly"
          ( And )
# 518 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 523 "parser.ml"
     : (Ast.expr))

let _menhir_action_19 =
  fun _1 _3 ->
    let _2 = 
# 129 "parser.mly"
          ( Or  )
# 531 "parser.ml"
     in
    (
# 107 "parser.mly"
                                   ( Op (_2, _1, _3) )
# 536 "parser.ml"
     : (Ast.expr))

let _menhir_action_20 =
  fun _2 ->
    (
# 108 "parser.mly"
                                   ( Moins _2 )
# 544 "parser.ml"
     : (Ast.expr))

let _menhir_action_21 =
  fun _2 ->
    (
# 109 "parser.mly"
                                   ( Not _2 )
# 552 "parser.ml"
     : (Ast.expr))

let _menhir_action_22 =
  fun _1 xs ->
    let _3 = 
# 229 "<standard.mly>"
    ( xs )
# 560 "parser.ml"
     in
    (
# 110 "parser.mly"
                                            ( Ecall(_1, Array.of_list _3) )
# 565 "parser.ml"
     : (Ast.expr))

let _menhir_action_23 =
  fun _2 ->
    (
# 111 "parser.mly"
                                   ( Address _2 )
# 573 "parser.ml"
     : (Ast.expr))

let _menhir_action_24 =
  fun _2 ->
    (
# 112 "parser.mly"
                                   ( ValPointer _2 )
# 581 "parser.ml"
     : (Ast.expr))

let _menhir_action_25 =
  fun _2 ->
    (
# 113 "parser.mly"
               ( _2 )
# 589 "parser.ml"
     : (Ast.expr))

let _menhir_action_26 =
  fun _1 ->
    (
# 51 "parser.mly"
               ( _1 )
# 597 "parser.ml"
     : (Ast.program))

let _menhir_action_27 =
  fun _1 _2 _6 xs ->
    let _4 = 
# 229 "<standard.mly>"
    ( xs )
# 605 "parser.ml"
     in
    (
# 70 "parser.mly"
    ( { typ = _1; name = _2; args = Array.of_list _4; body = Block _6} )
# 610 "parser.ml"
     : (Ast.func))

let _menhir_action_28 =
  fun _1 ->
    (
# 74 "parser.mly"
          ( Var _1 )
# 618 "parser.ml"
     : (Ast.left_value))

let _menhir_action_29 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 626 "parser.ml"
     : (Ast.program))

let _menhir_action_30 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 634 "parser.ml"
     : (Ast.program))

let _menhir_action_31 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 642 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_32 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 650 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_33 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 658 "parser.ml"
     : ((Ast.t * string) list))

let _menhir_action_34 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 666 "parser.ml"
     : ((Ast.t * string) list))

let _menhir_action_35 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 674 "parser.ml"
     : (Ast.expr list))

let _menhir_action_36 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 682 "parser.ml"
     : (Ast.expr list))

let _menhir_action_37 =
  fun _1 ->
    (
# 86 "parser.mly"
                          ( _1 )
# 690 "parser.ml"
     : (Ast.stmt))

let _menhir_action_38 =
  fun _1 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 87 "parser.mly"
                          ( Block _1, _startpos )
# 699 "parser.ml"
     : (Ast.stmt))

let _menhir_action_39 =
  fun _3 _5 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 88 "parser.mly"
                                                       ( If(_3, fst _5), _startpos )
# 708 "parser.ml"
     : (Ast.stmt))

let _menhir_action_40 =
  fun _3 _5 _7 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 89 "parser.mly"
                                                       ( IfElse(_3, fst _5, fst _7), _startpos )
# 717 "parser.ml"
     : (Ast.stmt))

let _menhir_action_41 =
  fun _3 _5 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 90 "parser.mly"
                                                       ( While(_3, fst _5), _startpos )
# 726 "parser.ml"
     : (Ast.stmt))

let _menhir_action_42 =
  fun _1 ->
    (
# 65 "parser.mly"
         ( F _1 )
# 734 "parser.ml"
     : (Ast.obj))

let _menhir_action_43 =
  fun _1 _2 ->
    (
# 66 "parser.mly"
                        ( V(_1, _2) )
# 742 "parser.ml"
     : (Ast.obj))

let _menhir_action_44 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 750 "parser.ml"
     : (unit option))

let _menhir_action_45 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 758 "parser.ml"
     : (unit option))

let _menhir_action_46 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 766 "parser.ml"
     : ((Ast.t * string) list))

let _menhir_action_47 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 774 "parser.ml"
     : ((Ast.t * string) list))

let _menhir_action_48 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 782 "parser.ml"
     : (Ast.expr list))

let _menhir_action_49 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 790 "parser.ml"
     : (Ast.expr list))

let _menhir_action_50 =
  fun _1 _3 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 78 "parser.mly"
                 ( Assign(_1, _3), _startpos )
# 799 "parser.ml"
     : (Ast.stmt))

let _menhir_action_51 =
  fun _1 _startpos__1_ xs ->
    let _3 = 
# 229 "<standard.mly>"
    ( xs )
# 807 "parser.ml"
     in
    let _startpos = _startpos__1_ in
    (
# 79 "parser.mly"
                                            ( Scall(_1, Array.of_list _3), _startpos )
# 813 "parser.ml"
     : (Ast.stmt))

let _menhir_action_52 =
  fun _2 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 80 "parser.mly"
                ( Return _2, _startpos )
# 822 "parser.ml"
     : (Ast.stmt))

let _menhir_action_53 =
  fun _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 81 "parser.mly"
                ( Continue, _startpos )
# 831 "parser.ml"
     : (Ast.stmt))

let _menhir_action_54 =
  fun _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 82 "parser.mly"
                ( Break, _startpos )
# 840 "parser.ml"
     : (Ast.stmt))

let _menhir_action_55 =
  fun _1 _2 _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 95 "parser.mly"
                        ( Def(_1, _2), _startpos )
# 849 "parser.ml"
     : (Ast.stmt))

let _menhir_action_56 =
  fun _1 ->
    (
# 96 "parser.mly"
                    ( _1 )
# 857 "parser.ml"
     : (Ast.stmt))

let _menhir_action_57 =
  fun () ->
    (
# 55 "parser.mly"
         ( Int )
# 865 "parser.ml"
     : (Ast.t))

let _menhir_action_58 =
  fun () ->
    (
# 56 "parser.mly"
         ( Char )
# 873 "parser.ml"
     : (Ast.t))

let _menhir_action_59 =
  fun () ->
    (
# 57 "parser.mly"
         ( Void )
# 881 "parser.ml"
     : (Ast.t))

let _menhir_action_60 =
  fun _1 ->
    (
# 58 "parser.mly"
              ( P(_1) )
# 889 "parser.ml"
     : (Ast.t))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AMP ->
        "AMP"
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
  
  let rec _menhir_run_108 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let _1 = _v in
      let _v = _menhir_action_26 _1 in
      MenhirBox_file _v
  
  let rec _menhir_run_106 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_obj -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let MenhirCell1_obj (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_30 x xs in
      _menhir_goto_list_obj_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_obj_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_108 _menhir_stack _v
      | MenhirState105 ->
          _menhir_run_106 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMICOLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_1, _2) = (_v, _v_0) in
              let _v = _menhir_action_43 _1 _2 in
              _menhir_goto_obj _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | LP ->
              let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v, _startpos) in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0, _startpos_1) in
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_2) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_3 in
                  let _v = _menhir_action_59 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
              | INT ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_5 in
                  let _v = _menhir_action_57 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
              | CHAR ->
                  let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_7 in
                  let _v = _menhir_action_58 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
              | RP ->
                  let _v = _menhir_action_33 () in
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_typ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
      let _v = _menhir_action_60 _1 in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_typ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState096 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState014 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_093 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMICOLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1, _2) = (_startpos, _v, _v_0) in
              let _v = _menhir_action_55 _1 _2 _startpos__1_ in
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | VOID ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_59 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState096 _tok
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_04 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState096 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | RETURN ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | LCB ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | INTEGER _v_2 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v_2) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState096 _tok
      | INT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_57 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState096 _tok
      | IF ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | IDENT _v_5 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState096
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_05 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState096 _tok
      | CONTINUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 _startpos__1_ in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096 _tok
      | CHAR ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_58 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState096 _tok
      | BREAK ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_54 _startpos__1_ in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | RCB ->
          let _v = _menhir_action_31 () in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_1 in
              let _v = _menhir_action_04 () in
              _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState016 _tok
          | TIMES ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
          | NOT ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
          | MINUS ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
          | LP ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
          | INTEGER _v ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_2, _v) in
              let _v = _menhir_action_03 _1 in
              _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState016 _tok
          | IDENT _v ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState016
          | FALSE ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_05 () in
              _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState016 _tok
          | AMP ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_WHILE _menhir_cell0_LP as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | TRUE ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_0 in
              let _v = _menhir_action_04 () in
              _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState068 _tok
          | TIMES ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | RETURN ->
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | NOT ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | MINUS ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | LP ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | LCB ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | INTEGER _v_2 ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_3, _v_2) in
              let _v = _menhir_action_03 _1 in
              _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState068 _tok
          | IF ->
              _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | IDENT _v_5 ->
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState068
          | FALSE ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_05 () in
              _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState068 _tok
          | CONTINUE ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_8 in
              let _v = _menhir_action_53 _startpos__1_ in
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
          | BREAK ->
              let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_10 in
              let _v = _menhir_action_54 _startpos__1_ in
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
          | AMP ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_TIMES (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_TIMES -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_TIMES (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_09 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState087 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState014 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState016 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState019 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState021 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState044 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState036 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState076 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_088 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_50 _1 _3 _startpos__1_ in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_04 () in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState036 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | INTEGER _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState036 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_05 () in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState036 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQQ | GE | GEQ | LE | LEQ | MINUS | NEQ | OR | PLUS | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_07 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_11 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_018 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_TIMES (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState018
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_TIMES -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TIMES (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_24 _2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_019 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_04 () in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | INTEGER _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019
      | FALSE ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_05 () in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_NOT as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | OR | RP | SEMICOLON ->
          let MenhirCell1_NOT (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_21 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_04 () in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState044 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | INTEGER _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState044 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_05 () in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState044 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_16 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_MINUS (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_04 () in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState046 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | INTEGER _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState046 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046
      | FALSE ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_05 () in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState046 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_MINUS as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQQ | GE | GEQ | LE | LEQ | MINUS | NEQ | OR | PLUS | RP | SEMICOLON ->
          let MenhirCell0_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_08 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_10 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_04 () in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState020
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_MINUS (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_20 _2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_021 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LP (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_04 () in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState021 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
      | INTEGER _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState021 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021
      | FALSE ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_05 () in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState021 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LP as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LP (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_25 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_04 () in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState042 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | INTEGER _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState042 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_05 () in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState042 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | EQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_19 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_04 () in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState048 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | INTEGER _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState048 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_05 () in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState048 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_12 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_1 in
              let _v = _menhir_action_04 () in
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState024 _tok
          | TIMES ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | NOT ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | MINUS ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | LP ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | INTEGER _v_3 ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_4, _v_3) in
              let _v = _menhir_action_03 _1 in
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState024 _tok
          | IDENT _v_6 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState024
          | FALSE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_7 in
              let _v = _menhir_action_05 () in
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState024 _tok
          | AMP ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | RP ->
              let _v = _menhir_action_35 () in
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | AND | COMMA | DIV | EQ | EQQ | GE | GEQ | LE | LEQ | MINUS | MOD | NEQ | OR | PLUS | RP | SEMICOLON | TIMES ->
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_28 _1 in
          _menhir_goto_left_value _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_0 in
              let _v = _menhir_action_04 () in
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState060 _tok
          | TIMES ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
          | NOT ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
          | MINUS ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
          | LP ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
          | INTEGER _v_2 ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_3, _v_2) in
              let _v = _menhir_action_03 _1 in
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState060 _tok
          | IDENT _v_5 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState060
          | FALSE ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_05 () in
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState060 _tok
          | AMP ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
          | _ ->
              _eRR ())
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let x = _v in
          let _v = _menhir_action_48 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_04 () in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState050 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | INTEGER _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState050 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_05 () in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState050 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_15 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_AMP (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_28 _1 in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_AMP -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_AMP (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_23 _2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_052 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_04 () in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState052 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | INTEGER _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState052 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_05 () in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState052 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_13 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_04 () in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState054 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | INTEGER _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState054 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_05 () in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState054 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_14 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_04 () in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState056 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | INTEGER _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState056 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_05 () in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState056 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_17 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_04 () in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState058 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | INTEGER _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState058 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_05 () in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState058 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_18 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState060 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState076 ->
          _menhir_run_029_spec_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState024 ->
          _menhir_run_029_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_061 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_49 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_029_spec_076 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_36 x in
      _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_077 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | AND | DIV | EQ | EQQ | GE | GEQ | LE | LEQ | MINUS | MOD | NEQ | OR | PLUS | TIMES ->
          let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let xs = _v in
          let _v = _menhir_action_22 _1 xs in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | SEMICOLON ->
          let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let xs = _v in
          let _v = _menhir_action_51 _1 _startpos__1_ xs in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_simple_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_081 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_37 _1 in
          _menhir_goto_no_declare_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_no_declare_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState014 ->
          _menhir_run_097_spec_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState096 ->
          _menhir_run_097_spec_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState068 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState084 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState074 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_097_spec_014 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LCB -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_56 _1 in
      _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState014 _tok
  
  and _menhir_run_097_spec_096 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_56 _1 in
      _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096 _tok
  
  and _menhir_run_092 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_WHILE _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, _3, _) = _menhir_stack in
      let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let _5 = _v in
      let _v = _menhir_action_41 _3 _5 _startpos__1_ in
      _menhir_goto_no_declare_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_085 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_no_declare_stmt -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_no_declare_stmt (_menhir_stack, _, _5) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, _3, _) = _menhir_stack in
      let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let _7 = _v in
      let _v = _menhir_action_40 _3 _5 _7 _startpos__1_ in
      _menhir_goto_no_declare_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_083 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_stack = MenhirCell1_no_declare_stmt (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | TRUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_04 () in
              _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState084 _tok
          | TIMES ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | RETURN ->
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | NOT ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | MINUS ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | LP ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | LCB ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | INTEGER _v_1 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos, _v_1) in
              let _v = _menhir_action_03 _1 in
              _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState084 _tok
          | IF ->
              _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | IDENT _v_3 ->
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState084
          | FALSE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_05 () in
              _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState084 _tok
          | CONTINUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_53 _startpos__1_ in
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084 _tok
          | BREAK ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_54 _startpos__1_ in
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084 _tok
          | AMP ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | _ ->
              _eRR ())
      | AMP | BREAK | CHAR | CONTINUE | FALSE | IDENT _ | IF | INT | INTEGER _ | LCB | LP | MINUS | NOT | RCB | RETURN | TIMES | TRUE | VOID | WHILE ->
          let MenhirCell1_expr (_menhir_stack, _, _3, _) = _menhir_stack in
          let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_39 _3 _5 _startpos__1_ in
          _menhir_goto_no_declare_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_086 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_0 in
              let _v = _menhir_action_04 () in
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState087 _tok
          | TIMES ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | NOT ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | MINUS ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | LP ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | INTEGER _v_2 ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_3, _v_2) in
              let _v = _menhir_action_03 _1 in
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState087 _tok
          | IDENT _v_5 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState087
          | FALSE ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_05 () in
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState087 _tok
          | AMP ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | _ ->
              _eRR ())
      | DIV ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_04 () in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState069 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | INTEGER _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState069 _tok
      | IDENT _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069
      | FALSE ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_05 () in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState069 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_52 _2 _startpos__1_ in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LCB (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | VOID ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_59 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_04 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | TIMES ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | RETURN ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | NOT ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | MINUS ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | LP ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | LCB ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | INTEGER _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_03 _1 in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | INT ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_3 in
          let _v = _menhir_action_57 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | IF ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | IDENT _v ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState014
      | FALSE ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_4 in
          let _v = _menhir_action_05 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | CONTINUE ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_5 in
          let _v = _menhir_action_53 _startpos__1_ in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState014 _tok
      | CHAR ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_6 in
          let _v = _menhir_action_58 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | BREAK ->
          let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_7 in
          let _v = _menhir_action_54 _startpos__1_ in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState014 _tok
      | AMP ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | RCB ->
          let _v = _menhir_action_31 () in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_1 in
              let _v = _menhir_action_04 () in
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState072 _tok
          | TIMES ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
          | NOT ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
          | MINUS ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
          | LP ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
          | INTEGER _v ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_2, _v) in
              let _v = _menhir_action_03 _1 in
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState072 _tok
          | IDENT _v ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072
          | FALSE ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_05 () in
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState072 _tok
          | AMP ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF _menhir_cell0_LP as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | TRUE ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_0 in
              let _v = _menhir_action_04 () in
              _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState074 _tok
          | TIMES ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | RETURN ->
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | NOT ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | MINUS ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | LP ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | LCB ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | INTEGER _v_2 ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_3, _v_2) in
              let _v = _menhir_action_03 _1 in
              _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState074 _tok
          | IF ->
              _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | IDENT _v_5 ->
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState074
          | FALSE ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_05 () in
              _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState074 _tok
          | CONTINUE ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_8 in
              let _v = _menhir_action_53 _startpos__1_ in
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState074 _tok
          | BREAK ->
              let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_10 in
              let _v = _menhir_action_54 _startpos__1_ in
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState074 _tok
          | AMP ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_1 in
              let _v = _menhir_action_04 () in
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState076 _tok
          | TIMES ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
          | NOT ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
          | MINUS ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
          | LP ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
          | INTEGER _v_3 ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_4, _v_3) in
              let _v = _menhir_action_03 _1 in
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState076 _tok
          | IDENT _v_6 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState076
          | FALSE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_7 in
              let _v = _menhir_action_05 () in
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState076 _tok
          | AMP ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
          | RP ->
              let _v = _menhir_action_35 () in
              _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | AND | DIV | EQ | EQQ | GE | GEQ | LE | LEQ | MINUS | MOD | NEQ | OR | PLUS | TIMES ->
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_28 _1 in
          _menhir_goto_left_value _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_left_value : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState014 ->
          _menhir_run_032_spec_014 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState096 ->
          _menhir_run_032_spec_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState068 ->
          _menhir_run_032_spec_068 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState074 ->
          _menhir_run_032_spec_074 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState087 ->
          _menhir_run_032_spec_087 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState084 ->
          _menhir_run_032_spec_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState076 ->
          _menhir_run_032_spec_076 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState072 ->
          _menhir_run_032_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState069 ->
          _menhir_run_032_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState016 ->
          _menhir_run_032_spec_016 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState018 ->
          _menhir_run_032_spec_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState019 ->
          _menhir_run_032_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState020 ->
          _menhir_run_032_spec_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState021 ->
          _menhir_run_032_spec_021 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState060 ->
          _menhir_run_032_spec_060 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState058 ->
          _menhir_run_032_spec_058 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState056 ->
          _menhir_run_032_spec_056 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState054 ->
          _menhir_run_032_spec_054 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState052 ->
          _menhir_run_032_spec_052 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState050 ->
          _menhir_run_032_spec_050 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState048 ->
          _menhir_run_032_spec_048 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState046 ->
          _menhir_run_032_spec_046 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState044 ->
          _menhir_run_032_spec_044 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState042 ->
          _menhir_run_032_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState040 ->
          _menhir_run_032_spec_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState038 ->
          _menhir_run_032_spec_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState036 ->
          _menhir_run_032_spec_036 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState034 ->
          _menhir_run_032_spec_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState024 ->
          _menhir_run_032_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState026 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_032_spec_014 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LCB -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
  
  and _menhir_run_032_spec_096 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState096 _tok
  
  and _menhir_run_032_spec_068 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_WHILE _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState068 _tok
  
  and _menhir_run_032_spec_074 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState074 _tok
  
  and _menhir_run_032_spec_087 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState087 _tok
  
  and _menhir_run_032_spec_084 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_no_declare_stmt -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState084 _tok
  
  and _menhir_run_032_spec_076 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState076 _tok
  
  and _menhir_run_032_spec_072 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IF _menhir_cell0_LP -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState072 _tok
  
  and _menhir_run_032_spec_069 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState069 _tok
  
  and _menhir_run_032_spec_016 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_WHILE _menhir_cell0_LP -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState016 _tok
  
  and _menhir_run_032_spec_018 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_TIMES -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_032_spec_019 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
  
  and _menhir_run_032_spec_020 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_032_spec_021 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LP -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState021 _tok
  
  and _menhir_run_032_spec_060 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState060 _tok
  
  and _menhir_run_032_spec_058 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState058 _tok
  
  and _menhir_run_032_spec_056 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState056 _tok
  
  and _menhir_run_032_spec_054 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState054 _tok
  
  and _menhir_run_032_spec_052 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState052 _tok
  
  and _menhir_run_032_spec_050 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState050 _tok
  
  and _menhir_run_032_spec_048 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState048 _tok
  
  and _menhir_run_032_spec_046 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_MINUS -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState046 _tok
  
  and _menhir_run_032_spec_044 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState044 _tok
  
  and _menhir_run_032_spec_042 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState042 _tok
  
  and _menhir_run_032_spec_040 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_032_spec_038 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_032_spec_036 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState036 _tok
  
  and _menhir_run_032_spec_034 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_TIMES -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_06 _1 in
      _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_032_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_06 _1 in
      _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState024 _tok
  
  and _menhir_run_099 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LCB -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LCB (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_02 _2 in
      _menhir_goto_block _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_block : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState013 ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState014 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_101 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_arg__ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_loption_separated_nonempty_list_COMMA_arg__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, _2, _) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, _1, _) = _menhir_stack in
      let _6 = _v in
      let _v = _menhir_action_27 _1 _2 _6 xs in
      let _1 = _v in
      let _v = _menhir_action_42 _1 in
      _menhir_goto_obj _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_obj : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_obj (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_59 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState105 _tok
      | INT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_57 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState105 _tok
      | CHAR ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_58 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState105 _tok
      | EOF ->
          let _v = _menhir_action_29 () in
          _menhir_run_106 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_089 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let x = () in
          let _ = _menhir_action_45 x in
          _menhir_goto_option_SEMICOLON_ _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | AMP | BREAK | CHAR | CONTINUE | ELSE | FALSE | IDENT _ | IF | INT | INTEGER _ | LCB | LP | MINUS | NOT | RCB | RETURN | TIMES | TRUE | VOID | WHILE ->
          let _ = _menhir_action_44 () in
          _menhir_goto_option_SEMICOLON_ _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_option_SEMICOLON_ : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_block -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_block (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
      let _v = _menhir_action_38 _1 _startpos__1_ in
      _menhir_goto_no_declare_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_029_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_36 x in
      _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_030 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_22 _1 xs in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_098 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_stmt -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_32 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState014 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState096 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer
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
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_59 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState103 _tok
              | INT ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_57 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState103 _tok
              | CHAR ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_58 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState103 _tok
              | _ ->
                  _eRR ())
          | RP ->
              let x = _v in
              let _v = _menhir_action_46 x in
              _menhir_goto_separated_nonempty_list_COMMA_arg_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_arg_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState103 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState008 ->
          _menhir_run_011_spec_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_104 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_arg -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_arg (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_47 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_arg_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_011_spec_008 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_34 x in
      _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008
  
  and _menhir_run_012 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_loption_separated_nonempty_list_COMMA_arg__ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LCB ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
      | _ ->
          _eRR ()
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_59 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | INT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_57 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | CHAR ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_58 () in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | EOF ->
          let _v = _menhir_action_29 () in
          _menhir_run_108 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let file =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_file v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
