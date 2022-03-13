// gcc -I./ tag-join.c 03-func-e.c -o 03-func-e

#include <stdio.h>
#include <tag-join.h>

int main() {
  Tag tags[] = {
    "rock", "jazz", "rock", "pop", "pop"};
  size_t len_tags =
    sizeof(tags) / sizeof(Tag);

  char *str;
  int alloc = sizeof(tags) + len_tags*2;
  
  str = tag_str(tags, len_tags);
  puts(str);
}

