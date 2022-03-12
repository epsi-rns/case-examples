#include <string.h>
#include <stdlib.h>
#include <tag-join.h>

char *tag_str(tag arrtag[], size_t len) {
  int i;
  char *str = malloc(len*(sizeof(tag)+2));

  strcpy(str, "");

  for(i=0; i <= len-1; i++) {
    strcat(str, arrtag[i]);
    strcat(str, (i < len-1) ? ", " : ".");
  }

  return str;
}
