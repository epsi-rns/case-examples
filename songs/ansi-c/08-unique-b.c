// gcc -I ./ tag-join.c 08-unique-b.c -o 08-unique-b

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tag-join.h>

typedef char Tag[5];

Tag tags[] = {
  "rock", "jazz", "rock", "pop", "pop"};

int main() {
  int i, j;
  size_t n = sizeof(tags) / sizeof(Tag);
  int count = n;

  // remove duplicates
  for(i = 0; i < n; i++) {
    for(j = i+1; j < n; j++) {
      if (strcmp(tags[i], tags[j]) == 0) {
        strcpy(tags[j], "\0");
        count--;
      }}}

  printf("unique = %d\n", count);
  Tag *uniq = malloc(count*(sizeof(Tag)));

  // rebuild array
  j = 0;
  for(i = 0; i < n; i++)
    if (strcmp(tags[i], "\0") != 0)
      strcpy(uniq[j++], tags[i]);

  printf("%s\n", tag_str(uniq, count));
}
