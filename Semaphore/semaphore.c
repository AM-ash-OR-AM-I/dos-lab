#include <stdio.h>
#define MAX_QUEUE_SIZE 10

typedef struct semaphore {
  int count;
  int queue[MAX_QUEUE_SIZE];
} Semaphore;

void semWait(Semaphore s) {
  s.count--;
  if (s.count<0){
    /* Place the process in s.queue
     * Block this process
     */
  }
}

void semSignal(Semaphore s) {
  s.count++;
  if (s.count<=0){
    /* Remove process p from s.queue
     * Add it to readylist
     */
  }
}
