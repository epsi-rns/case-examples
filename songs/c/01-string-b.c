#include <stdio.h>
#include <string.h>

int main () {
  char *pstr1 = "Yello";
  char *pstr2 = "Earth";
  char str3[16];

  pstr1 = "Hello";
  strcpy(str3, "");

  strcat(str3, pstr1);
  strcat(str3, ", ");
  strcat(str3, pstr2);
  puts(str3);

  return 0;
}

