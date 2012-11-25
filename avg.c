#include <stdio.h>
#define ENDDATA (-1)

main() {
  int array[] = {20, 39, 40, 1, 12, 421, 11, 4, ENDDATA};
  int count = 0, sum = 0;
  int i = 0;
  double ave;

  while (array[i] != ENDDATA) {
    sum += array[i];
    count++;
    i++;
  }

  if (count == 0)
    ave = 0.0;
  else
    ave = (double)sum / count;

  printf("合計値＝%d, 有効データ数＝%d, 平均値＝ %f\n", sum, count, ave);
}
