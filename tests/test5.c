void f(int x, int y){
    int u ;
    u= x+y;
    while (u>3){
        print_int(6);
        int v;
        v=3;
        if (x>3){
            while (v>0){
                print_int(5);
                v=v-1;
            } 
        } else{
            while (v>0){
                print_int(-1);
                v=v-1;
            } 
        } u= u-1;
    } print_int(0);
} 

void main(){
    f(4,1);
    f(1,4);
} 