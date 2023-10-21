open Ast
open Ast_mips

(* représente la pile SP *)
let pile = ref []
let push x = (pile := x :: !pile)
let pop () = (pile := List.tl !pile)

let rec index x acc = function
  | [] -> failwith "Erreur" (*raise (VarUndef x)*)
  | (b, h) :: t -> if h = x then (if b then acc else failwith "problème variable non définie") else index x (acc+1) t

(* renvoie la valeur associé à la variable x*)
let value (x : string) = Areg (4*index x 0 !pile, SP)

(* envoie A0 sur la pile *)
let add_to_pile x = push (false, x); List.rev_append [Addi(SP, SP, -4)]

(* assigné une valeur*)
let assign x v = (*assign x v : assigne à x la valeur v, en mettant la valeur du booléen associé au premier x à true dans la pile*) let acc= ref 0 in 
  let rec modifielist lst = match lst with
  | [] -> failwith "variable non "
  | (b,t)::q when t=x ->  (true,t)::q 
  |  hd::q-> acc := !acc+1 ; hd:: (modifielist q ) in 
  pile := modifielist !pile ; Sw(A0,Areg(4* !acc,SP))
(* retire le haut de la pile *)
let rem_from_pile acc = pop (); Addi(SP, SP, 4) :: acc

let ( ~: ) x acc = x :: acc

let convert (o : binop) = List.rev_append (match o with
 | Add -> [Add (A0, A1, A0)]
 | Sub -> [Sub (A0, A1, A0)]
 | Mul -> [Mult (A1, A0); Move (A0, Lo)]
 | Div -> [Div (A1, A0); Move (A0, Lo)]
 | Mod -> [Div (A1, A0); Move (A0, Hi)]
 | Leq -> [Sub (A0, A1, A0); Slti (A0, A0, 1)]
 | Le  -> [Slt (A0, A1, A0)]
 | Geq -> [Sub (A0, A0, A1); Slti (A0, A0, 1)]
 | Ge  -> [Slt (A0, A0, A1)]
 | Neq -> [Xor (A0, A1, A0)]
 | Eq  -> [Xor (A0, A1, A0); Mult (A0, A0); Slt (A0, Zero, Lo)]
 | And -> [And (A0, A1, A0)]
 | Or  -> [Or (A0, A1, A0)])

let rec compile_expr ex acc = match ex with
  | I i -> Li (A0, i) :: acc
  | Val (Var x) -> Lw (A0, value x) :: acc
  | Moins e -> acc |> (compile_expr e) |> (~:(Sub(A0, Zero, A0)))
  | Not e -> acc |> (compile_expr e) |>  (~:(Slti (T 1, A0, 0))) |> (~:(Slt (A0, Zero, A0))) |> (~:(Nor (A0, A0, T 1)))
  | Op (o, e1, e2) ->
  acc
   |> (compile_expr e1)
   |> (add_to_pile "1")
   |> (compile_expr e2)
   |> (~: (Lw (A1, Areg (0, SP))))
   |> rem_from_pile
   |> (convert o)
  | Ecall (f, e) ->
    acc
    |> (compile_expr e.(0))
    |> (~:(Jal f))


(* Compilation du programme *)
let rec compile_stmt func stmt = 
  match stmt with 

  | Def (t,s) -> add_to_pile s
  | Assign (Var x,exp)->[compile_expr exp ] @ [assign x ]
  | Scall (nom,arg)-> begin  match nom with 
    | "print_int" ->  compile_expr arg[0]; print
    | _-> failwith "fonction void non définie"
        ; end 
  | Block lst-> List.iter (compile_stmt func) lst 
  (*| Return of expr
  | Print e :: t -> 
    compile_prog func (code
                       |> (compile_expr e)
                       |> print
     ) t
  | Read x :: t->
    compile_prog func (code
                       |> read
                       |> (add_to_pile x)
     ) t
  | Function (f, x, e) :: t ->
    compile_prog (func
                  |> (instr (Label f))
                  |> (add_to_pile x) (* variable muette *)
                  |> (instr (Move (A0, RA)))
                  |> (add_to_pile "0RA") (* adresse de l'instr suivante *)
                  |> (compile_expr e)
                  |> (instr (Lw (A1, Areg (0, SP)))) (* On met dans A1 l'intruction suivante *)
                  |> rem_from_pile (* on supprime l'adresse de l'instr suivante *)
                  |> rem_from_pile (* on supprime la variable muette *)
                  |> (instr (Jr A1))
     ) code t *) 

(* Compile le programme p et enregistre le code dans le fichier ofile *)
let compile_program p ofile =
  let code = compile_stmt [] [] p in
  let p =
    { text = (Label "main") :: code ;
      data = []
    }
  in
  Mips.print_program p ofile;