#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Song {
  char *title;
  char *tags[5];
};

int main() {
  struct Song *song = (struct Song *)
    malloc(sizeof(struct Song));

  song->title = (char*) malloc(sizeof(char) * 32);
  song->title = (char*) "Cantaloupe Island";
  puts(song->title);

  char *tmp = (char*) malloc(sizeof(char) * 5 * 2);
  song->tags[0] = &tmp[0];
  song->tags[1] = &tmp[1 * 5];

  strcpy(song->tags[0], "60s");
  strcpy(song->tags[1], "jazz");
  puts(song->tags[1]);

  free(song);
}
