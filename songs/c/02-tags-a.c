#include <stdio.h>

char tags[][5] = {
  "rock", "jazz", "rock", "pop", "pop"};

int main() {
  int i;
  size_t n = sizeof(tags)/sizeof(tags[0]);

  for(i=0; i <= n-1; i++) {
    printf("%s\n", tags[i]);
  }
}
