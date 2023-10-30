void main(int arg) {
    int x;
    x = 5;
    int w;
    int* wp;
    w = 892;
    wp = &w;

    int* y;
    y = &x;
    print_int(*y);
    *y = 15;
    print_int(*y);
    print_int(x);
    x = 10;
    print_int(*y);
    print_int(x);

    int** z;
    z = &y;
    **z = 19;
    print_int(**z);
    print_int(*y);
    z = &wp;
    print_int(**z);
    print_int(x);
}