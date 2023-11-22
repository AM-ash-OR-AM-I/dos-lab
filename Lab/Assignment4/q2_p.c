#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <unistd.h>
int main()
{
    int i = 5;
    if (vfork() == 0)
    {
        i = i + 1;
        _exit(0);
    }
    else
        i = i - 1;
    fprintf(stderr, "%d", i);
    return 0;
}