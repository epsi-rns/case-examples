#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef char Tag[5];

Tag tags[] = {
  "rock", "jazz", "rock", "pop", "pop"};

char *tag_str() {
  int i;
  char *str = malloc (sizeof (char) * 35);
  size_t n = sizeof(tags)/sizeof(Tag);

  strcpy(str, "");

  for(i = 0; i < n; i++) {
    strcat(str, tags[i]);
    strcat(str, (i < n-1) ? ", " : ".");
  }

  return str;
}
