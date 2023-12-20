# include <stdio.h>
# include "semaphore.c"

Semaphore s, t;

void p1(){
  semWait(t);
  printf("A");
  semSignal(s);
  semWait(t);
  printf("D");
  semSignal(s);
}

void p2(){
  semWait(s);
  printf("B");
  semSignal(t);
  semWait(s);
  printf("C");
  semSignal(t);
}
int main() {

}
