#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
  if (fork() == 0)
    printf("1");
  else
    printf("2");
  printf("3");
  return 0;
}
