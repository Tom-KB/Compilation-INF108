%{
  (* Code OCaml *)
  open Ast
%}
 
%token <int> INTEGER
%token <string> IDENT
%token INT /* à ne pas confondre avec INTEGER qui est un entier */
%token CHAR
%token VOID
%token NOT OR AND TRUE FALSE IF ELSE
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

/* Cela sert juste à fixer le problème d'ambiguïté du "dangling ELSE",
   aka le problème lorsqu'un IF est suivi d'un IF ELSE,
   il y a une ambiguïté sur quel IF est associé au ELSE.
*/
%nonassoc then_
%nonassoc ELSE

/* Cela définit une fonction OCaml "Parser.file",
  "file" étant une règle définit plus bas.
*/
%start file

/* "file" renvoit un objet de type "Ast.program" */
%type <Ast.program> file 

%%
/* règles avec syntaxe se rapprochant de celle des grammaires. */

file: obj* EOF { $1 }
;

typ:
  | INT  { Int }
  | CHAR { Char }
  | VOID { Void }
  ;

arg: typ IDENT { ($1, $2) }
;

obj:
  | func { F $1 }
  | typ IDENT SEMICOLON { V($1, $2) }
  ;

func: typ IDENT LP separated_list(COMMA, arg) RP block 
    { { typ = $1; name = $2; args = Array.of_list $4; body = Block $6} }
;

left_value:
  | IDENT { Var $1 }
  ;

simple_stmt:  
  | left_value EQ expr { Assign($1, $3), $startpos } 
  | IDENT LP separated_list(COMMA, expr) RP { Scall($1, Array.of_list $3), $startpos }
  | RETURN expr { Return $2, $startpos }
  ;

no_declare_stmt:
  | simple_stmt SEMICOLON { $1 }
  | block SEMICOLON?      { Block $1, $startpos }
  | IF LP expr RP no_declare_stmt %prec then_          { If($3, fst $5), $startpos }
  | IF LP expr RP no_declare_stmt ELSE no_declare_stmt { IfElse($3, fst $5, fst $7), $startpos }
  ;

/* cela sert à éviter de faire compiler if (1) int x; */
stmt:
  | typ IDENT SEMICOLON { Def($1, $2), $startpos }
  | no_declare_stmt { $1 }

block:
  | LCB stmt* RCB { $2 }
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
