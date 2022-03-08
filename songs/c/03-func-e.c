// gcc -I./ tag-join.c 03-func-e.c -o 03-func-e

#include <stdio.h>
#include <tag-join.h>

int main() {
  tag tags[] = {
    "rock", "jazz", "rock", "pop", "pop"};
  size_t n = sizeof(tags)/sizeof(tag);

  char *str;
  int alloc = sizeof(tags) + n*2;
  
  str = tag_str(tags, n);
  puts(str);

  return 0;
}

