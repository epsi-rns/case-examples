#include <stdio.h>
#include <string.h>

struct Tag {
  char str[5];
};

struct Tag tags[] = {
  "rock", "jazz", "rock", "pop", "pop"};

int main() {
  int i;
  char str[35] = "";
  size_t n = sizeof(tags) / sizeof(tags[0]);

  for(i = 0; i < n; i++) {
    strcat(str, tags[i].str);
    strcat(str, (i < n-1) ? ", " : ".");
  }
  puts(str);
}
