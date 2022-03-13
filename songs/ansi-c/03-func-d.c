#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef char Tag[5];
char *tag_str(Tag *arrtag, size_t n);

int main() {
  Tag tags[] = {
    "rock", "jazz", "rock", "pop", "pop"};
  size_t len_tags =
    sizeof(tags) / sizeof(Tag);

  char *str;
  str = tag_str(tags, len_tags);
  puts(str);
  free(str);
}

char *tag_str(Tag *arrtag, size_t len) {
  int i;
  char *str = malloc (sizeof (char) * 35);

  strcpy(str, "");

  for(i = 0; i <= len-1; i++) {
    if (*arrtag[i] == '\0') continue;
    if (i > 0) strcat(str, ", ");
    strcat(str, arrtag[i]);
  }
  strcat(str, ".");

  return str;
}
