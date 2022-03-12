// Source by Ammar Faizi

#include <stdio.h>
#include <string.h>
char tags[5][5];

int main() {
  
  typedef struct { __typeof__(tags) _; } _;
  *(_*)&tags = (_){{"rock", "jazz", "rock", "pop", "pop"}};

  size_t i = 0;
  for (i = 0; i < 5; i++) {
     puts(tags[i]);
  }

  return 0;
}
