#include <string.h>
#include <stdlib.h>
#include <tag-join.h>

char *tag_str(Tag arrtag[], size_t len) {
  int i;
  char *str = malloc(len*(sizeof(Tag)+2));

  strcpy(str, "");

  for(i = 0; i < len; i++) {
    if (*arrtag[i] == '\0') continue;
    if (i > 0) strcat(str, ", ");
    strcat(str, arrtag[i]);
  }
  strcat(str, ".");

  return str;
}
