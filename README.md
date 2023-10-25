# Compilation-INF108

Lien MIPS ["https://peterfab.com/ref/mips/MIPSir.html"]

Version clean changelog:

Converter:

-code plus propre

-Partie If et IfElse réécrit avec des |>

-Corriger un bug qui faisait que print_int(); aurait dit que print_int n'était pas défini

-rem_from_pile prend maintenant un argument pour le nombres d'élément à enlever de la pile

-acc devient instr

Parser:

-Bug du "dangling else" corrigé (IF suivi d'un If ELSE est ambigu car on sait pas a quel IF le ELSE est relié)

TODO:

-variables globales dans le segment "data"

-vérifier qu'il y a un main et qu'il est bien à la fin

-tester tous les opérateurs

-système d'erreur de syntaxe

-Fonctions à n arguments

-while, break, continue

-pointeurs, tableau (int*, *, &, arithmetique : cf slide 12)

-malloc

-logique paresseuse (||, &&)

-char, sizeof

-string

-struct
