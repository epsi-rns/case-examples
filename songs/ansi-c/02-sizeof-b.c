#include <stdio.h>
#include <stdlib.h>

typedef char Tag[5];

int main() {
  Tag *tags = malloc(sizeof(Tag) * 6);

  strcpy(tags[0], "rock");
  strcpy(tags[1], "jazz");
  strcpy(tags[2], "rock");
  strcpy(tags[3], "pop");
  strcpy(tags[4], "pop");
  strcpy(tags[5], "disco");

  printf("Tag*6   : %d\n", sizeof(Tag) * 6);
  printf("tags    : %d\n", sizeof(tags));
  printf("tags[0] : %d\n", sizeof(tags[0]));

  size_t n = sizeof(tags)/sizeof(Tag);
  printf("length  : %d\n", n);

  free(tags);
}
