#include <stdio.h>
#include <string.h>

typedef char Tag[5];

Tag tags[] = {
  "rock", "jazz", "rock", "pop", "pop"};

int main() {
  int i;
  char str[35] = "";
  size_t n = sizeof(tags) / sizeof(Tag);

  for(i = 0; i < n; i++) {
    strcat(str, tags[i]);
    strcat(str, (i < n-1) ? ", " : ".");
  }
  puts(str);
}
