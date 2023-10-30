void f(int x){
    if (x>0){
        if(x>4){
            print_int(x-2);
        } 
        print_int(x+5);
    } else{
        print_int(x*2);
    } 
    print_int(0);
} 

int g(int x, int y, int z){
    if (z==0){
        if (y==0){
            if (x==0){
                return -1;
                print_int(5);//test pour voir si le print est effectué
            } 
            else{
                return -x;
                print_int(5);
            } 
        } else{
            return x*y;
            print_int(5);
        } 
    } else{
        return x*y -z;
        print_int(5);
    } print_int(5);
} 


void main(){
    f(3);
    f(6);
    f(0);
    print_int(g(5,6,7));
    print_int(g(5,0,0));
    print_int(g(0,0,0));
    print_int(g(5,6,0));
} 