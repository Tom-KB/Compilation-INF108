
type register = 
  | A0 | A1 | V0 | RA | SP | GP | FP | T of int | S of int | Zero 

type address =
  | Alab of string
  | Areg of int * register

type instruction =
  | Sltu of register*register*register
  | Sltiu of register*register*int
  | Mflo of register
  | Mfhi of register
  | Move of register * register
  | Li   of register * int
  | Lw   of register * address
  | Sw   of register * address
  | Add  of register * register * register
  | Addi of register * register * int
  | Sub  of register * register * register
  | Mult of register * register
  | Div  of register * register
  | Or   of register * register * register
  | And  of register * register * register
  | Xor  of register * register * register
  | Nor  of register * register * register
  | Slt  of register * register * register
  | Slti of register * register * int
  | Jal of string
  | J of string
  | Jr of register
  | Syscall
  | Label of string
  | Comment of string
             
type data = 
  | Asciiz of string * string
  | Word of string * int

type mips_program = {
  text : instruction list;
  data : data list;
}


let string_register = function
  | A0 -> "$a0"
  | A1 -> "$a1"
  | V0 -> "$v0"
  | RA -> "$ra"
  | SP -> "$sp"
  | FP -> "$fp"
  | GP -> "$gp"
  | T i -> "$t"^(string_of_int i)
  | S i -> "$t"^(string_of_int i)
  | Zero -> "$zero"

         
let string_address = function
  | Alab s ->  s
  | Areg (ofs, r) -> (string_of_int ofs)^"("^(string_register r)^")"


let string_instruction = function
  | Move (dst, src) -> 
      "\tmove\t"^(string_register dst)^", "^(string_register src)
  | Sltu (dst, src, src2) ->
         "\tsltu\t"^(string_register dst)^","^(string_register src)^","^(string_register src2)
   | Sltiu (dst, src, entier) ->
      "\tsltiu\t"^(string_register dst)^","^(string_register src)^","^(string_of_int entier)
  |Mflo(dst) -> "\tmflo\t"^(string_register dst)
  |Mfhi(dst)-> "\tmfhi\t"^(string_register dst)
  | Li (r, i) ->
     "\tli\t"^(string_register r)^", "^(string_of_int i)
  | Lw (r, a) ->
    "\tlw\t"^(string_register r)^","^(string_address a)
  | Sw (r, a) ->
     "\tsw\t"^(string_register r)^","^(string_address a)
  | Add (dst, src, src2) ->
     "\tadd\t"^(string_register dst)^","^(string_register src)^","^(string_register src2)
  | Addi (dst, src, src2) ->
     "\taddi\t"^(string_register dst)^","^(string_register src)^","^(string_of_int src2)
  | Sub (dst, src, src2) ->
     "\tsub\t"^(string_register dst)^","^(string_register src)^","^(string_register src2)
  | Mult (src, src2) ->
     "\tmult\t"^(string_register src)^","^(string_register src2)
  | Div (src, src2) ->
     "\tdiv\t"^(string_register src)^","^(string_register src2)
  | Or (dst, src, src2) ->
     "\tor\t"^(string_register dst)^","^(string_register src)^","^(string_register src2)
  | And (dst, src, src2) ->
     "\tand\t"^(string_register dst)^","^(string_register src)^","^(string_register src2)
  | Xor (dst, src, src2) ->
     "\txor\t"^(string_register dst)^","^(string_register src)^","^(string_register src2)
  | Nor (dst, src, src2) ->
     "\tnor\t"^(string_register dst)^","^(string_register src)^","^(string_register src2)
  | Slt (dst, src, src2) ->
     "\tslt\t"^(string_register dst)^","^(string_register src)^","^(string_register src2)
  | Slti (dst, src, src2) ->
     "\tslti\t"^(string_register dst)^","^(string_register src)^","^(string_of_int src2)
  | Jal s -> "\tjal\t"^s
  | J s -> "\tj\t"^s
  | Jr r -> "\tjr\t"^(string_register r)
  | Syscall -> "\tsyscall"
  | Comment s ->  "\t "^s
  | Label s ->  s^":"

let string_data = function
  | Asciiz (l, s) -> 
      l^":\t.asciiz '"^(String.escaped s)^"'"
  | Word (l, n) ->
     l^": \t.word "^(string_of_int n)
let print_program p out_filename =
  let out_file = open_out out_filename in
  let add s =
     Printf.fprintf out_file "%s\n" s;
  in
  add "\t.text";
  List.iter (fun e -> string_instruction e |> add ) p.text  ;
  add "\t.data";
  List.iter (fun e -> string_data e |> add ) p.data ;
  close_out out_file

