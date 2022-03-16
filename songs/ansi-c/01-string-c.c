#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main () {
  char *str;

  // segmentation fault without malloc.
  str = malloc(sizeof(char) * 16);

  strcpy(str, "Hello Earth");
  printf("%s\n", str);

  str = "Yello Earth";
  printf("%s\n", str);
}

