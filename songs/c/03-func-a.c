// gcc 03-func-a.c -o 03-func-a

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef char tag[5];

tag tags[] = {
  "rock", "jazz", "rock", "pop", "pop"};

char *tag_str();

int main() {
  char *str;
  str = tag_str();
  puts(str);
}

char *tag_str() {
  int i;
  char str[35];
  size_t n = sizeof(tags)/sizeof(tag);

  strcpy(str, "");

  for(i=0; i <= n-1; i++) {
    strcat(str, tags[i]);
    strcat(str, (i < n-1) ? ", " : ".");
  }

  char *result = malloc (sizeof (char) * 35);

  // do not just: result = str
  strcpy(result, str);

  return result;
}
