#include <stdio.h>
#define N 10

main() {
  int array[N] = {100,123,456,21,-122,3,832,111,908,5};
  int max;
  int i;

  max = array[0];

  for(i = 1; i < N; i++) {

    if(max < array[i]) {
      max = array[i];
    }
  }

  printf("最大値 : %d\n", max);

}
