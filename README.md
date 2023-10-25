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

-BUG: if (1) intx; créer une vraible locale en degors du if. A gérer au niveau du Parser en faisant un Block.

-BUG: variables globales dans le segment "data"

-BUG: vérifier qu'il y a un main et qu'il est bien à la fin

-commentaires

-BUG: If et IfElse crée des label dans le code MIPS donc trouver un moyen d'éviter les problèmes avec la définition de fonction avec les noms de ces labels

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
