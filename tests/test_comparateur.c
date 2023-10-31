void main(){
    int x;
    int y;
    x = 2;
    y = 3;
    int z;
    int t;
    z= false;
    t= true;

    //strictement inférieur
    print_int(x<y);
    print_int(x<2);
    print_int(2<x);
    print_int(y<x);

    // strictement supérieur
    print_int(x>y);
    print_int(x>2);
    print_int(2>x);
    print_int(y>x);

    // inférieur ou égal
    print_int(x<=y);
    print_int(x<=2);
    print_int(2<=x);
    print_int(y<=x);

    // supérieur ou égal
    print_int(x>=y);
    print_int(x>=2);
    print_int(2>=x);
    print_int(y>=x);

    // différent de 
    print_int(x!=y);
    print_int(y!=x);
    print_int(x!=2);
    print_int(2!=x);

    // égal
    print_int(x==y);
    print_int(y==x);
    print_int(2==x);
    print_int(x==2);

    // and
    print_int(z&&t);
    print_int(t&&z);
    print_int(true&&t);
    print_int(z&&true);

    // or
    print_int(z||t);
    print_int(t||z);
    print_int(false||t);
    print_int(z||false );

    //test combiné
    print_int(( (x==y)!=(x>y))|| ((true&&t)>(y<x)));
    print_int(y>x && t);
    print_int((z||t)<t);
} 