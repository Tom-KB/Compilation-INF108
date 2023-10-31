
/* main */
void main (){
  int i;
  int j;
  int n;
  n = 0;
  i = 1;
  while (i < 10){
    j = 1;
    while (j < 10) {
      n = n + i*j;
      j = j+1;
      continue;
    }
    i=i+1;
    continue;
  }
  print_int(n);
  i=0;
  while (true) {
    if (i == 10) break;
    i = i + 1;
    if (i % 2 == 0) continue;
    print_int(i);
    
  }
}
