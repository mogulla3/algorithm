#include <stdio.h>
#define N 10


//main(){
//  int array[N] = {12,43,12,5,64,43,78,9,0,234};
//  int sum = 0;
//  int i;
//
//  for (i=0; i < N; i++) {
//    sum += array[i];
//  }
//
//  printf("合計値 = %d\n", sum);
//}


main(){
  int array[N] = {1,2,3,4,5,6,7,8,9,10};
  int sum = 0;
  int i;

  for (i=0; i < N; i ++)
    sum += array[i];

  printf("%d",sum);
}
