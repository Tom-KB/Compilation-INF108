void f(int x){
  print_int(x);
}

int fac(int n){
  if (n < 2) return 1;
  return n*fac(n-1);
}

void main(int x){
    int x;
    x=5;
    if (x>6){
        f(3);
    } else{
        f(0);
    }
    if (x > 7) f(fac(5));
    f(fac(1));
}