#include <stdio.h>

main() {
  char buf[256];
  int len;

  /* コマンドラインからの入力を取得する */
  gets(buf);
  len = 0;

  while (buf[len] != '\0')
    len ++;

  printf ("文字長 => %d\n", len);
}
