#include <stdio.h>

int main () {
  char str1[10] = "Yello";
  char str2[]   = "Earth";
  char str3[16];

  sprintf(str3, "%s, %s", str1, str2);
  puts(str3);

  return 0;
}

