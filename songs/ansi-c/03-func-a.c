// gcc 03-func-a.c -o 03-func-a

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *tags[5] = {
  "rock", "jazz", "rock", "pop", "pop"};

char *tag_str();

int main() {
  char *str;
  str = tag_str();
  puts(str);
  free(str);
}

char *tag_str() {
  int i;
  char str[35];
  size_t len_tags =
    sizeof(tags) / sizeof(tags[0]);

  strcpy(str, "");

  for(i = 0; i <= len_tags-1; i++) {
    strcat(str, tags[i]);
    strcat(str, (i < len_tags-1) ? ", " : ".");
  }

  char *result = malloc (sizeof (char) * 35);

  // do not just: result = str
  strcpy(result, str);

  return result;
}
