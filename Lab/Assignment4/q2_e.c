# include <stdio.h>
# include <sys/wait.h>
# include <stdlib.h>
# include <unistd.h>

int main() {
    pid_t pid;
    int i=5;
    pid=fork();
    if(pid==0) {
        i=i+1;
        printf("Child: %d\n",i);
    } else {
        wait(NULL);
        printf("Parent: %d\n",i);
    }
    return 0;
}