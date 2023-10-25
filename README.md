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
