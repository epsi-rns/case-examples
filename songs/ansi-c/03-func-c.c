#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef char Tag[5];

Tag tags[] = {
  "rock", "jazz", "rock", "pop", "pop"};

void tag_str(char* str);

int main() {
  char str[35];
  tag_str(str);
  printf("%s\n", str);
}

void tag_str(char* str) {
  int i;
  size_t len_tags =
    sizeof(tags) / sizeof(Tag);

  strcpy(str, "");

  for(i = 0; i <= len_tags-1; i++) {
    strcat(str, tags[i]);
    strcat(str, (i < len_tags-1) ? ", " : ".");
  }
}
