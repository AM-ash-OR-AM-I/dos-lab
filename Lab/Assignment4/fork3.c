#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main() {
  int process_count = 0;
  for (int i = 0; i < 3; i++) {
    fork();
    process_count++;
    wait(NULL);
    printf("Hello from pid: %d, [parent] pid: %d, count: %d\n", getpid(),
           getppid(), process_count);
  }
  return 0;
}
