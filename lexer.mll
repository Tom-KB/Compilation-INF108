{
  open Lexing
  open Parser
   
  exception Lexing_error of char
    
  let kwd_tbl = ["&&",AND; "true",TRUE;"false",FALSE; "int", INT; "char", CHAR; "void", VOID;
                 "!",NOT; "||",OR ;"return",RETURN;  ] (* "NULL", NULL; *)
  let id_or_kwd s = try List.assoc s kwd_tbl with _ -> IDENT s

  let newline lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <- 
      { pos with pos_lnum = pos.pos_lnum + 1; pos_bol = pos.pos_cnum }

  let pile = ref [0]

  let desescape s =
    let rec foo i =
      if String.length s = i
      then []
      else
        if i+1 < String.length s && s.[i]='\\'
        then
          let c = match s.[i+1] with
                    | 'n' -> '\n'
                    | 'r' -> '\r'
                    | 't' -> '\t'
                    | '"' -> '"'
                    | c -> raise (Lexing_error(c)) in
          c::foo (i+2)
        else s.[i]::foo(i+1)
     in            
     foo 0 |> List.map (String.make 1)|> String.concat ""
}

let letter = ['a'-'z' 'A'-'Z']
let digit = ['0'-'9']
let ident = letter (letter | digit)*
let integer = ['0'-'9']+
let space = [' ' '\t']
let chaine = ([^'\"']|'\\''\n'|'\\''\"')*

rule first = parse
  | space* '\n' { newline lexbuf ; first lexbuf }
  (* | space* { first lexbuf } Si erreur, regardez ici ! *)
and token = parse
  | '\n' { newline lexbuf ; first lexbuf }
  | space+ { token lexbuf }
  | ident as id { [id_or_kwd id] }
  | '#'[^'\n']* { token lexbuf}
  | ';'     { [SEMICOLON] }
  | ','     { [COMMA] }
  | '+'     { [PLUS] }
  | '!''='  { [NEQ] }
  | '-'     { [MINUS] }
  | '*'     { [TIMES] }
  | '/'     { [DIV] }
  | '%'     { [MOD] }
  | '=''='  { [EQQ] }
  | '='     { [EQ] }
  | '('     { [LP] }
  | ')'     { [RP] }
  | '{'     { [LCB] }
  | '}'     { [RCB] }
  (* | '['     { [LB] }
  | ']'     { [RB] } *)
  | '<''='  { [LEQ] }
  | '>''='  { [GEQ] }
  | '<'  { [LE] }
  | '>'  { [GE] }
  | integer as s { [INTEGER (int_of_string(s))] } (* Vérifier si c'est la bonne méthode à adopter *)
  | eof     { [EOF] }
  (* | '\"' (chaine as s) '\"' { [STR(desescape s)] }   *)
  | _ as c  { raise (Lexing_error c) }


{
  let rec take_buffered = 
    let buffer = ref None in
    fun lexbuf ->
      match !buffer with
      | Some (x::t) -> buffer := Some t ; x
      | Some [] ->  buffer := Some (token lexbuf) ; take_buffered lexbuf
      | None -> buffer := Some (first lexbuf) ; take_buffered lexbuf
}
