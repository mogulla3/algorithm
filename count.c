#include <stdio.h>
#define ENDDATA (-1)

main(){
  int array[] = {3,2,1,2,3,4,5,6,7,8,9,0,10,2222,ENDDATA};
  int count = 0;
  int i = 0;

  while(array[i] != ENDDATA){
    count++;
    i++;
  }

  printf("有効データ数 = %d\n", count);
}
