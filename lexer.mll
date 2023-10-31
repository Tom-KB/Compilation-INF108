{
  (* Ici on définit tout le code OCaml executé avant le Lexer.
     Le "open Parser" permet de définir les tokens.
  *)
  open Parser
  exception Lexing_error of char

(* On définit ici les mots-clés que l'on reconnaît dans le code c*) 
  let kwd_tbl = [
  "true", TRUE;
  "false", FALSE;
  "int", INT;
  "char", CHAR;
  "void", VOID;
  "return", RETURN;
  "if", IF;
  "else", ELSE;
  "while", WHILE; 
  "continue", CONTINUE;
  "break", BREAK; 
  ]
  (* Renvoie IDENT si s ne correspon à aucun des mots-clés, sinon 
  il renvoie le token correspondant*)
  let id_or_kwd s = try List.assoc s kwd_tbl with _ -> IDENT s
}

(* Ici on définit les expressions régulières utiles. *)

let letter = ['a'-'z' 'A'-'Z' '_']
let digit = ['0'-'9']

let space = [' ' '\t' '\n']
(* \r de code ASCII 13, apparait sans aucune raison dans tous les codes *)
let carriage_return = '\r'
let comment1 = "/*" ([^'*'] | '*' [^'/'])* "*/"
let comment2 = "//" [^'\n']* '\n'
let comment = comment1 | comment2

(* on ignorera ces cas: les commentaires (car pas decommentaires dans mips), les carriage return et les espaces*)
let ignore = space | carriage_return | comment

(*les chaînes de caractères doivent commencer par une lettre, le reste des caractères peuvent être
des lettres ou bien des chiffres*)
let ident = letter (letter | digit)*
(* un integer est composé d'un chiffre ou plus*)
let integer = digit+

(* Cela définit la fonction OCaml "Lexing.read".
   Le lexbuf représente le code C. Ce dernier
   sera convertit en lexbuf.
   La fonction "read" convertit alors un morceau
   du lexbuff en token.
   "read lexbuf" est donc un appel récursif qui lit
   la suite du lexbuf pour aller checher le prochain token.
*)
rule read = parse
  | ignore  { read lexbuf }
  | ident as id { id_or_kwd id }
  | ';'     { SEMICOLON }
  | ','     { COMMA }
  | '+'     { PLUS }
  | "!="    { NEQ }
  | '-'     { MINUS }
  | '*'     { TIMES }
  | '/'     { DIV }
  | '%'     { MOD }
  | "=="    { EQQ }
  | '='     { EQ }
  | '!'     { NOT }
  | "&&"    { AND }
  | "||"    { OR }
  | '('     { LP }
  | ')'     { RP }
  | '{'     { LCB }
  | '}'     { RCB }
  | "<="    { LEQ }
  | ">="    { GEQ }
  | '<'     { LE }
  | '>'     { GE }
  | '&'     { AMP }
  | integer as s { INTEGER (int_of_string s) }
  | eof     { EOF } 
  | _ as c  { raise (Lexing_error c) }

