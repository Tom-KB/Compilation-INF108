/* Analyseur syntaxique Compilateur */

%{
  open Ast
%}
 
%token <int> INTEGER
%token <string> IDENT
%token INT /* à ne pas confondre avec INTEGER qui est un entier */
%token CHAR
%token VOID
%token NOT OR AND TRUE FALSE
%token RETURN
%token EOF COMMA SEMICOLON
%token LP RP LCB RCB
%token PLUS MINUS TIMES DIV MOD
%token EQ EQQ
%token LEQ GEQ LE GE NEQ

/* Définitions des priorités et associativités des tokens */
%left OR
%left AND
%nonassoc NOT
%nonassoc LE LEQ GE GEQ EQQ NEQ
%left PLUS MINUS 
%left TIMES DIV MOD
/* Le "%prec uminus" dans la règle expr donne au moins (déjà utile pour l'opération binaire)
   la précédence d'un opérateur unaire. Utile à savoir plus tard pour le "*" et les pointeurs. */
%nonassoc uminus

/* Point d'entrée de la grammaire */
%start file

/* Type des valeurs retournées par l'analyseur syntaxique */
%type <Ast.program> file 

%%

file: obj* EOF { $1 }
;

typ:
  | INT  { Int }
  | CHAR { Char }
  ;

arg: typ IDENT {($1, $2)}

obj:
  | func   { F $1 }
  | func_v { Fv $1 }
  ;

func: typ IDENT LP separated_list(COMMA, arg) RP block 
    {{ typ = $1; name = $2; args = Array.of_list $4; body = $6 }}
;
func_v: VOID IDENT LP separated_list(COMMA, arg) RP block 
    {{ name_v = $2; args_v = Array.of_list $4; body_v = $6 }}
;

block:
  | LCB stmt* RCB { Block $2, $startpos }
  ;

left_value:
  | IDENT { Var $1 }
  ;

simple_stmt:  
  | typ IDENT { Def ($1, $2), $startpos }
  | left_value EQ expr { Assign($1, $3), $startpos } 
  | IDENT LP separated_list(COMMA, expr) RP { Scall($1, Array.of_list $3), $startpos }
  | RETURN expr { Return $2, $startpos }
  ;

stmt:
  | simple_stmt SEMICOLON { $1 }
  ;

expr:
  | INTEGER                        { I $1 }
  | TRUE                           { I 1 }
  | FALSE                          { I 0 }
  | left_value                     { Val $1 }
  | expr op expr                   { Op ($2, $1, $3) }
  | MINUS expr %prec uminus        { Moins $2 }
  | NOT expr                       { Not $2 } 
  | IDENT LP separated_list(COMMA, expr) RP { Ecall($1, Array.of_list $3) }
  | LP expr RP { $2 }
  ;

%inline op:
  | PLUS  { Add }
  | MINUS { Sub }
  | TIMES { Mul }
  | DIV   { Div }
  | MOD   { Mod }
  | LEQ   { Leq }
  | GEQ   { Geq }
  | GE    { Ge  }
  | LE    { Le  }
  | NEQ   { Neq }
  | EQQ   { Eq  }
  | AND   { And }
  | OR    { Or  } 
  ;
