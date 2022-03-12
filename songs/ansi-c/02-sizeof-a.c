#include <stdio.h>
#include <stdlib.h>

typedef char Tag[5];

Tag tags[] = {
  "rock", "jazz", "rock", "pop", "pop", "disco" };

int main() {
  printf("Tag*6   : %d\n", sizeof(Tag) * 6);
  printf("tags    : %d\n", sizeof(tags));
  printf("tags[0] : %d\n", sizeof(tags[0]));

  size_t n = sizeof(tags)/sizeof(Tag);
  printf("length  : %d\n", n);
}
