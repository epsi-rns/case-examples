#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef char tag[5];
char *tag_str(tag* tags, size_t n);

int main() {
  tag tags[] = {
    "rock", "jazz", "rock", "pop", "pop"};
  size_t n = sizeof(tags)/sizeof(tag);

  char *str;
  str = tag_str(tags, n);
  puts(str);

  return 0;
}

char *tag_str(tag *arrtag, size_t n) {
  int i;
  char *str = malloc (sizeof (char) * 35);

  strcpy(str, "");

  for(i=0; i <= n-1; i++) {
    strcat(str, arrtag[i]);
    strcat(str, (i < n-1) ? ", " : ".");
  }

  return str;
}
