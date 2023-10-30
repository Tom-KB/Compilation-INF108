void main(int arg) {
    int x;
    x = 4;
    
    int* y;
    y = malloc(5*4);

    *(y+0) = x;
    *(y+1) = 15;
    *(y+2) = 20;
    print_int(*(y+0));
    print_int(*(y+1));
    print_int(*(y+2));
    print_int(*(y+3));

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
    print_int(*(k-1)); 

    print_int(k-m);

    print_int(**(g + 0) + 2); 

}