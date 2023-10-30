int main(int w)
{
    int x;
    int y;
    x = 0;
    while (x < 5) {
      y = 0;
      while (y < 5) {
        if (x+y == 3) break;
        print_int(x+y);
        y = y+1;
      }
      print_int(999);
      x=x+1;
    }


    return 0;
}