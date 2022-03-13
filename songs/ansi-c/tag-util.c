#include <string.h>
#include <stdlib.h>
#include <tag-util.h>

char *tag_str(Tag arr_tag[], size_t len_tags) {
  int cur; // current cursor
  char *str = malloc(len_tags*(sizeof(Tag)+2));

  strcpy(str, "");

  for(cur = 0; cur <= len_tags-1; cur++) {
    if (*arr_tag[cur] == '\0') continue;
    if (cur > 0) strcat(str, ", ");
    strcat(str, arr_tag[cur]);
  }
  strcat(str, ".");

  return str;
}

int tag_count(Tag arr_tag[], size_t len_tags) {
  int cur; // current cursor
  int count = 0;

  for(cur = 0; cur <= len_tags-1; cur++)
    if (*arr_tag[cur]!='\0') count++;

  return count;
}

Tag *tag_array(Tag arr_tag[], size_t len_tags) {
  int cur, new_index, count;
  Tag *tags;

  count = tag_count(arr_tag, len_tags);
  if (count == 0) return NULL;

  tags = malloc(count*sizeof(Tag));

  new_index = 0;
  for(cur = 0; cur <= len_tags-1; cur++)
    if (*arr_tag[cur] != '\0')
      strcpy(tags[new_index++], arr_tag[cur]);

  return tags;
}

Tag *arr_concat(
    Tag arr_source[], size_t len_source,
    Tag arr_append[], size_t len_append) {
  int cur;
  char *tag_string;

  arr_source = realloc(arr_source,
        sizeof(Tag) * (len_source + len_append));

  for(cur = 0; cur <= len_append-1; cur++)
    strcpy(
      arr_source[len_source+cur],
      arr_append[cur]);

  return arr_source;
}
