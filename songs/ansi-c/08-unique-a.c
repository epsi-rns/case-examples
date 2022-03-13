#include <stdio.h>
#include <string.h>

typedef char Tag[5];

Tag tags[] = {
  "rock", "jazz", "rock", "pop", "pop"};

int main() {
  int i, j;
  int count = 0;
  size_t n = sizeof(tags) / sizeof(Tag);

  for(i = 0; i < n; i++) {
    for(j = i+1; j < n; j++) {
      if (strcmp(tags[i], tags[j]) == 0)
        strcpy(tags[j], "\0");
    }
  }

  for(i = 0; i < n; i++)
    if (strcmp(tags[i], "\0") != 0) {
      printf("%s\n", tags[i]);
      count++;
    }

  printf("unique = %d\n", count);
}
