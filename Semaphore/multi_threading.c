#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include "semaphore.c"

Semaphore s, t;

int printCount = 0;

void* print_once(void* pString)
{
  while (true) {
    semWait(s); 
    printf("%s", (char*)pString);
    printCount++;
    semSignal(t);
  }
  return 0;
}

void* print_twice(void* pString)
{
    semWait(t);
    printCount++;
    printf("%s", (char*)pString);
    printf("%s", (char*)pString);
    semSignal(s);
    return 0;
}

int main(void)
{
    s = 0, t=1;
    pthread_t thread1, thread2;

    // make threads
    pthread_create(&thread1, NULL, print_once, "Foo");
    pthread_create(&thread2, NULL, print_twice, "Bar");

    // wait for them to finish
    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL); 

    return 0;
}
