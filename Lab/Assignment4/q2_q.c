#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <unistd.h>
int main()
{
    int j, i = 5;
    for (j = 1; j < 3; j++)
    {
        if (vfork() == 0)
        {
            i = i + 1;
            // _exit(0);
            // break;
        }
        // else
        //     wait(NULL);
    }
    fprintf(stderr, "%d %d\n", i, j);
    return 0;
}