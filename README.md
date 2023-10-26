# Compilation-INF108

Lien MIPS ["https://peterfab.com/ref/mips/MIPSir.html"]

Version clean changelog:

Converter:

-code plus propre

-Partie If et IfElse réécrit avec des |>

-Corriger un bug qui faisait que print_int(); aurait dit que print_int n'était pas défini

-rem_from_pile prend maintenant un argument pour le nombres d'élément à enlever de la pile

-acc devient instr

-Le return marche avec les if

-On vérifie que main est bien à la fin

Parser:

-Bug du "dangling else" corrigé (IF suivi d'un If ELSE est ambigu car on sait pas a quel IF le ELSE est relié)

-Bug du if (1) int x; qui compile (alors que ca devrait pas) est corrigé

TODO:

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


Remarque:

-BUG: int x; int x; ne passe pas en C car la variable est déclaré deux fois (on peut ignorer ce bug)

-data est tout le temps vide sinon c'est galère
