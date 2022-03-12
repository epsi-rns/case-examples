// gcc -I./ 03-func-b2.c -o 03-func-b2

#include <stdio.h>
#include <03-join-b.c>

char *tag_str();

int main() {
  printf("%s\n", tag_str());
}
