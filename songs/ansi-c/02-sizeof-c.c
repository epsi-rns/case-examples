#include <stdio.h>
#include <stdlib.h>

typedef char Tag[5];

char **tags;

int main() {
  tags = malloc(sizeof(char *) * 6);

  tags[0] = "rock";
  tags[1] = "jazz";
  tags[2] = "rock";
  tags[3] = "pop";
  tags[4] = "pop";
  tags[5] = "disco";

  printf("Tag*6   : %d\n", sizeof(Tag) * 6);
  printf("tags    : %d\n", sizeof(tags));
  printf("tags[0] : %d\n", sizeof(tags[0]));

  size_t n = sizeof(tags)/sizeof(Tag);
  printf("length  : %d\n", n);

  free(tags);
}
