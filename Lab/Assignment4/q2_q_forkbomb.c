#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>
int main() {
  int j, i = 5;
  for (j = 1; j < 5; j++) {
    if (vfork() == 0) {
      i = i + 1;
    }
  }
  return 0;
}