#include <stdio.h>
#define N 10

main() {
  int array[N] = {540,-12,1233,-4333,932,123,333,8,1000,2};
  int min;
  int i;

  // 最小値に比較する値よりも確実に小さい値を入れる
  min = 99999;

  for (i = 0; i < N; i++ ){
    if (min > array[i]) {
      min = array[i];
    }
  }
  printf("最小値 => %d\n", min);

}
