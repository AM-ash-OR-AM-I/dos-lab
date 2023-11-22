#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <unistd.h>
int main()
{
    int i = 5;
    fork();
    i = i + 1;
    fork();
    fprintf(stderr, "% d", i);
    return 0;
}