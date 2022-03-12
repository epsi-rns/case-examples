#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char tag[5];

struct Song {
  char *title;
  tag tags[];
};

int main() {
  struct Song *song = (struct Song *)
    malloc(sizeof(char *) * (1+2));

  song->title = (char*) "Cantaloupe Island";
  puts(song->title);

  strcpy(song->tags[0], "60s");
  strcpy(song->tags[1], "jazz");
  puts(song->tags[1]);

  free(song);
}
