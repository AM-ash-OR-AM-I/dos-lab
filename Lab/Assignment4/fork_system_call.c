#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
  pid_t process;
  int x = 1;
  process = fork();

  if (process < 0) {
    perror("Fork failure\n");
    exit(1);
  }

  if (process == 0) {
    printf("Child has x = %d\n", ++x);
    printf("Child's pid = %d\n", getpid());
  } else {
    printf("Parent has x = %d\n", --x);
    printf("Parent's pid = %d\n", getpid());
  }
}