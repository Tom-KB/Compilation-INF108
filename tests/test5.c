//fonction puissance
int pow(int x, int n){
  if (n == 0) return 1;
  if (n % 2 == 0) return pow(x*x, n/2);
  return x*pow(x*x, n/2);
}

/* main */
void main (){
  int v;
  int w;
  v = 3;
  w = pow(v, v);
  print_int(w);
  print_int(pow(w, 2));
  print_int(pow(1, w));
  print_int(pow(v, w/10));
}
