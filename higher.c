#include <stdio.h>
#define N 10
#define MAX 9999
#define MIN (-9999)

int higher();
int lower();

int m;
int array[N+1] = {1,2,3,34,93,41,21,43,42,12};

main() {
  int low, high;

  printf("数値を入力してください : ");
  scanf("%d", &m);

  high = higher();
  low = lower();

  printf("%dより大きい値は", m);
  if (high == MAX)
    printf("ありませんでした\n");
  else
    printf("%dです",high);

  printf("%dより小さい値は", m);
  if (low == MIN)
    printf("ありませんでした\n");
  else
    printf("%dです\n", low);
}

int higher() {
  int i;
  array[N] = MAX;
  i = 0;
  while (array[i] <= m)
    i++;
  return array[i];
}

int lower() {
  int i;
  array[N] = MIN;
  i = 0;
  while (array[i] >= m)
    i++;
  return array[i];
}
