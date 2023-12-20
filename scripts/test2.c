#include <stdio.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
  printf("Hello Friend.");
  fork();
  fork();
  fork();
  return 0;
}
