#include <string.h>
#include <stdlib.h>
#include <tag-join-r.h>

char *tag_str_r(struct TagsRecord r) {
  int i;
  char *str = malloc(r.length*(sizeof(Tag)+2));

  strcpy(str, "");

  for(i=0; i <= r.length-1; i++) {
    if (*(r.tags)[i]=='\0') continue;
    if (i > 0) strcat(str, ", ");
    strcat(str, r.tags[i]);
  }
  strcat(str, ".");

  return str;
}
