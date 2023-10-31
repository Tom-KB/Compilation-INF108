int* y;

void lecteur(int j) {
    print_int(*(y+2)+j); // Lecture d'un entier dans une fonction à partir d'un pointeur
}

void main(int arg) {
    int x;
    x = 4;
    
    y = malloc(5*4);
    
    *(y+0) = x; // Assignation de la valeur d'une variable à un champ
    *(y+1) = 15;
    *(y+2) = 20;
    print_int(*(y+0));
    print_int(*(y+1));
    print_int(*(y+2));
    print_int(*(y+3)); // Non initialisée, vaut donc 0
    
    lecteur(2);
    
    int* m;
    m = malloc(5*4);

    int** g;
    g = malloc(4*1);

    int* k;

    g = &m;
    *(m + 0) = 5;
    *(m + 1) = 45;

    k = (m + 1);
    print_int(*k); 
    print_int(*(k-1)); // Equivaut à m

    print_int(k-m); // 1

    print_int(**(g + 0) + 2); 
    
    int i;
    i = 1;
    // Arithmétique avec variable
    print_int(*(m + i)); 
    print_int(*(k - i)); 
    
}