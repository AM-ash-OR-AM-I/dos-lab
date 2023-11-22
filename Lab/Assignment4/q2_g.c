# include <stdio.h>
# include <sys/wait.h>
# include <stdlib.h>
# include <unistd.h>
int main(){
    int i=5;
    if(fork()==0) {
        printf("Child: %d",i);
    }
    else {
        printf("Parent: %d",i);
    }
    return 0;
}