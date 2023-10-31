// Allocation dans de mémoire dans une fonction

int* f(int x) {
    int* y;
    y = malloc(2*4);
    *y = x;
    return y;
}

void main(int arg) {
    int* z;

    z = f(50);
    print_int(*z);
}