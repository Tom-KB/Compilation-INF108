int* tab;

void triABulles(int tabSize) {
    int i;
    int j;

    i = tabSize - 1;
    j = 0;

    int save;

    while (i >= 1) {
        while (j < i) {
            if (*(tab + j + 1) < *(tab + j)) {
                save = *(tab + j);
                *(tab + j) = *(tab + j + 1);
                *(tab + j + 1) = save;
            }
            j = j + 1;
        }
        i = i - 1;
        j = 0;
    }
}

void main(int args) {
    int tS;
    tS = 10;
    tab = malloc(tS*4);
    
    *(tab+0) = 1;
    *(tab+1) = 9;
    *(tab+2) = 3;
    *(tab+3) = 2;
    *(tab+4) = 5;
    *(tab+5) = 8;
    *(tab+6) = 6;
    *(tab+7) = 7;
    *(tab+8) = 4;
    *(tab+9) = 0;

    int i;
    i = 0;
    while (i < tS) {
        print_int(*(tab+i));
        i = i + 1;
    }
    
    // Utiliser afin de démarquer les deux éléments
    print_int(100);
    
    triABulles(tS);

    i = 0;
    while (i < tS) {
        print_int(*(tab+i));
        i = i + 1;
    }
}