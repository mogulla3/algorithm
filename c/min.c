#include <stdio.h>
#define N 10

main() {

  int ary[N] = {12,45,21,12,144,123,4,0,-4,1999};
  int min;
  int i;
  min = ary[0];

  for (i = 0; i < N; i++) {
    if (min > ary[i]) {
      min = ary[i];
    }
  }

  printf("最小値は%dです",min);
}
