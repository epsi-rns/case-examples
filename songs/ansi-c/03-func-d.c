#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *tag_str(char **arrtag, size_t n);

int main() {
  char *tags[5] = {
    "rock", "jazz", "rock", "pop", "pop"};
  size_t len_tags =
    sizeof(tags) / sizeof(tags[0]);

  char *str;
  str = tag_str(tags, len_tags);
  puts(str);
  free(str);
}

char *tag_str(char **arrtag, size_t len) {
  int i;
  char *str = malloc (sizeof (char) * 35);

  strcpy(str, "");

  for(i = 0; i < len; i++) {
    if (*arrtag[i] == '\0') continue;
    if (i > 0) strcat(str, ", ");
    strcat(str, arrtag[i]);
  }
  strcat(str, ".");

  return str;
}
