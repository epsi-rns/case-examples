#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main () {
  char *str;

  str = malloc(sizeof(char) * 16);
  printf("Initial address   : %X\n", str);

  strcpy(str, "Hello Earth");
  printf("Using string copy : %X\n", str);

  // you cannot realloc after assignment.
  str = "Yello Earth";
  printf("Using assignment  : %X\n", str);

}
