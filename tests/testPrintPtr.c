void main(int arg) {
    int x;
    x = 5;

    int* y;
    int** z;
    int*** w;

    z = &y;
    y = &x;
    w = &z;
    print_int(*y);
    *y = 15;
    print_int(**z);
    *y = 25;
    print_int(***w);
}