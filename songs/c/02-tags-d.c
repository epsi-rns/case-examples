#include <stdio.h>
#include <string.h>

char **tags = (char *[]) {
  "rock", "jazz", "rock", "pop", "pop", NULL};

int main() {
  int i;
  char str[35] = "";

  i = 0;
  while (tags[i] != NULL) {
    strcat(str, tags[i]);
    strcat(str, (tags[++i] != NULL) ? ", " : ".");
  }
  puts(str);
}
