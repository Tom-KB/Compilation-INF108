void f(int x){
	print_int(x);
}

int fac1(int x){
  if (x < 2) return 1;
  return x*fac1(x-1);
}

int fac2(int x){
  if (x < 2) return 1;
  else return x*fac2(x-1);
}


int fac3(int x){
  if (x < 2) return 1;
  else {}
  return x*fac3(x-1);
}

int fac4(int x){
  if (x > 1) return x*fac4(x-1);
  return x;
}

int fac5(int x){
  if (x > 1) return x*fac5(x-1);
  else return 1;
}

int fac6(int x){
  if (x > 1) return x*fac6(x-1);
  else {}
  return 1;
}


void main(){
  f(fac1(5));
  f(fac2(5));
  f(fac3(5));
  f(fac4(5));
  f(fac5(5));
  f(fac6(5));
}

