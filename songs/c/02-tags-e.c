#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char **tags;

int main() {
  int i;
  char str[35] = "";

  tags = malloc(sizeof(char *) * 6);

  tags[0] = "rock";
  tags[1] = "jazz";
  tags[2] = "rock";
  tags[3] = "pop";
  tags[4] = "pop";
  tags[5] = NULL;

  i = 0;
  while (tags[i] != NULL) {
    strcat(str, tags[i]);
    strcat(str, (tags[++i] != NULL) ? ", " : ".");
  }
  puts(str);
}
