Kei Beauduin, Thomas K/Bidi, Lauren Calvosa, Leïla Iksil

Projet compilateur:

     Partie de C géré par le compilateur:

        - Types de variables: entier, void(pour les fonctions), et pointeurs vers des entiers

        - Opérations basiques : +, *, /, -, %
        
        - Comparaisons et opérations sur les booléens : <, <=, >, >=, !=, ==, &&, || (pas d'évaluation paresseuse)

        - Fonctions: Les fonctions peuvent être de type int ou void, donc renvoyer une valeur ou non. Elles peuvent avoir un nombre arbitraire d'arguments(0 ou un nombre entier positif, mais pas de pointeurs). Les fonctions peuvent également renvoyées un pointeur. Les fonctions print_int et malloc sont supportées par le compilateur.

        - Instructions supportées par le compilateur: if _, if _ else, while _, continue et break, return, = , définitions de variables

        - Les commentaires /* ... */, // ... \n

        - Arithmétique des pointeurs : les opérations d'addition et de soustraction d'entiers aux pointeurs (depuis un entier ou une variable) ainsi que la différence entre deux pointeurs. La syntaxe est cependant restreinte si on ne met pas de *(), soit k un pointeur, ces syntaxes fonctionnent (e)+k ou k+(e) (Exemple : (1+1*4)+k ou k+(1+1*4)), dans ces exemples les entiers sont automatiquement multipliés par 4. 

     
         
     Spécificités:

        - Lorsqu'on compile le programme, on ajoute à la liste les instructions à l'envers, ainsi, quand on arrive à la fin du programme, on renverse notre liste d'instructions avant d'ajouter l'appel au main.

        - Toutes les variables sont dans la pile (Sp): variables locales et arguments de fonctions.
        
        - Si une fonction est appelée en tant que statement, l'instruction sera associée dans l'Ast à Scall, sinon, à Ecall (ce qui indique que la fonction est censée renvoyer une valeur).

        - Fonction non-void : Une fonction non-void renvoie ce qu'il y a dans A0 à la fin de son execution. Les returns permettent de modifier A0 et de sortir de la fonction. Une fonction n'est donc pas "safe" si elle n'a pas de return, car elle renverra un artefact du dernier calcul.

        - Gestion des adresses dans Sp : Lorsqu'une variable est déclarée (on doit d'abord déclarer une variable avant de lui assigner une valeur, on ne peut pas écrire int x = 5 par exemple), on ajoute à la pile (nommée pile) (type de la variable, nom de la variable, false), false sert à indiquer que pour le moment, aucune valeur ne lui a été assignée. Quand on lui assigne une valeur, le dernier élément du tuple devient true, et pour récupérer son index dans Sp, on récupère la profondeur de la variable dans pile.

        - Gestion des arguments des fonctions : lorsqu'on appelle une fonction à n arguments, on considère que les arguments sont stockés aux adresses 0($sp), ..., (n-1)*4($sp). Lorsqu'on calcule les valeurs de ces arguments, on ajoute à pile des "variables fantômes" pour indiquer au compilateur que ces emplacements sont occupés, puis à la fin de la compilation des arguments, on retire de pile ces variables. Ces emplacements de Sp ne sont donc plus assignés à aucune variable dans la pile, donc on indique au début de l'appel de la fonction que ces emplacements correspondent aux différents arguments de la fonction. (voir Scall et Ecall, et compile_obj lorsqu'on arrive sur une fonction dans converter)

        - Gestion des if _, if _ else _, et while _ : pour ces instructions, en mips on a besoin de définir des labels afin d'indiquer leur fin, ou les différentes délimitations (voir while et done, else et suite). Pour obtenir des noms de labels différents, on génère des labels uniques pour chaque if/if else et while. Pour éviter les conflits de de ces labels avec ceux des fonctions, on ajoute aux noms des fonctions autres que main un préfixe func_.

        - Désallouement des variables locales : d correspond au nombre de variables locales définies dans un bloc. Il nous permet de savoir combien de variables locales on doit désallouer de la pile lorsqu'on arrive sur un return ou lorsqu'on arrive à la fin d'un bloc.

        - Gestion des return : Lorsqu'on arrive sur un return, on doit désallouer les variables locales définies avant, et désallouer les arguments de la fonction dans laquelle on est, pour cela, on décale Sp, cependant on ne les retire pas de pile, car si le return est dans un if par exemple, on pourrait en avoir besoin dans d'autres parties de la fonction. Ainsi, on retire les arguments de pile dans compile obj.
        
        
