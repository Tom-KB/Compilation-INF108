void main (){
    int x;
    int y;
    x = 12;
    y = 6;

    // Add
    print_int(6+12);
    print_int(6+x);
    print_int(x+6);
    print_int(x+y);

    // Sub
    print_int(x-y);
    print_int(12-6);
    print_int(x-6);
    print_int(12-y);

    // Mul
    print_int(x*y);
    print_int(12*6);
    print_int(x*6);
    print_int(12*y);

    // Div
    print_int(x/y);
    print_int(12/6);
    print_int(x/6);
    print_int(12/y);

    // Mod
    print_int(x%y);
    print_int(12%6);
    print_int(x%6);
    print_int(12%y);

    //tests combinés
    print_int(((x+y) % 5 )- 2);
    print_int((x+y % 5 )- 2);
    print_int((35/5+7)*x - y);
    print_int((x+6-y) % (x*y-43));
    print_int((x*y-43) % (x-y+5));
    print_int(-x);
} 