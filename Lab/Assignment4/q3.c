#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main() {
  pid_t pid1, pid2, pid3;
  int status;

  pid1 = fork();

  if (pid1 < 0) {
    fprintf(stderr, "Fork failed\n");
    exit(1);
  } else if (pid1 == 0) {
    // First child process
    printf("First child: Process ID = %d\n", getpid());
    printf("First child: Parent Process ID = %d\n", getppid());
    execlp("cp", "cp", "file1", "file2", NULL);

  } else {
    // Parent process
    wait(NULL);
    sleep(1);
    pid2 = fork();
    if (pid2 < 0) {
      fprintf(stderr, "Fork failed\n");
      exit(1);
    } else if (pid2 == 0) {
      // Second child process
      printf("Second child: Process ID = %d\n", getpid());
      printf("Second child: Parent Process ID = %d\n", getppid());
      execlp("cat", "cat", "file2", NULL);
    } else {
      // Parent process
      wait(NULL);
      sleep(1);
      pid3 = fork();
      if (pid3 < 0) {
        fprintf(stderr, "Fork failed\n");
        exit(1);
      } else if (pid3 == 0) {
        // Third child process
        printf("Third child: Process ID = %d\n", getpid());
        printf("Third child: Parent Process ID = %d\n", getppid());
        execlp("sort", "sort", "-r", "file2", NULL);
      } else {
        // Parent process
        wait(NULL);
        printf("Parent: Process ID = %d\n", getpid());
      }
    }
  }

  return 0;
}
