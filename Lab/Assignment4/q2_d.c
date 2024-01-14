#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

int main() {
  pid_t pid;
  int i = 5;
  pid = vfork(); // Parent execution is suspended
  i = i + 1;
  if (pid == 0) {
    printf("Child: %d\n", i);
    exit(0);
  } else {
    printf("Parent: %d\n", i);
  }
  return 0;
}

// Output:
// Child: 6
// Parent: 6