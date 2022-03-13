#include <stdio.h>
#include <string.h>

char **tags[] = {
  "rock", "jazz", "rock", "pop", "pop"};

int main() {
  int i;
  char str[35] = "";
  size_t n = sizeof(tags) / sizeof(tags[0]);

  for(i = 0; i <= n-1; i++) {
    strcat(str, tags[i]);
    strcat(str, (i < n-1) ? ", " : ".");
  }
  puts(str);
}
