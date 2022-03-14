#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// There is no silver bullet: there are use cases for each side.
// http://blog.llvm.org/2011/05/what-every-c-programmer-should-know.html
// https://stackoverflow.com/questions/367633/what-are-all-the-common-undefined-behaviours-that-a-c-programmer-should-know-a

struct Song {
  char *title;
  char *tags[5];
};

int main() {
  struct Song *song = malloc(sizeof(struct Song));

  song->title = malloc(sizeof(char) * 32);
  song->title = "Cantaloupe Island";
  puts(song->title);

  char *tmp = malloc(sizeof(char) * 5 * 2);
  song->tags[0] = &tmp[0];
  song->tags[1] = &tmp[1 * 5];

  strcpy(song->tags[0], "60s");
  strcpy(song->tags[1], "jazz");
  puts(song->tags[1]);

  free(song);
}
