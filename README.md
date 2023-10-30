# Compilation-INF108

Lien MIPS ["https://peterfab.com/ref/mips/MIPSir.html"]

Version clean changelog:

Converter:

-code plus propre

-Partie If et IfElse réécrit avec des |>

-Corriger un bug qui faisait que print_int(); aurait dit que print_int n'était pas défini

-rem_from_pile prend maintenant un argument pour le nombres d'élément à enlever de la pile

-acc devient instr

-On vérifie que main est bien à la fin

-bug des IF ELSE RETURN corrigé

-commentaires

-while, break, continue

-Fonctions à n arguments

-Verification que l'on ait pas f(int x, int x) ou f(void y)

Parser:

-Bug du "dangling else" corrigé (IF suivi d'un If ELSE est ambigu car on sait pas a quel IF le ELSE est relié)

-Bug du if (1) int x; qui compile (alors que ca devrait pas) est corrigé

-while, break, continue

Lexer:

-ajout des commentaires // ... \n et /* ... */

-ajout du charactères \r dans les caractères ignorés

-while, break, continue

Calc:

-L'erreur d'analyse lexicale print le code ascii en plus

TODO:

-ajouter un prefixe func_ aux fonctions non mains pour éviter l'interférence avec les label des If, IfElse, while

-tester tous les opérateurs

-système d'erreur de syntaxe

-pointeurs, tableau (int*, *, &, arithmetique : cf slide 12)

-malloc

-logique paresseuse (||, &&)

-char, sizeof

-string

-struct


Remarque:

-BUG: int x; int x; ne passe pas en C car la variable est déclaré deux fois (on peut ignorer ce bug)

-data est tout le temps vide sinon c'est galère
