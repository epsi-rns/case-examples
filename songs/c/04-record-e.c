#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char tag[5];

struct Song {
  char *title;
  tag tags[];
};

int main() {
  struct Song *song = malloc(
    sizeof(char *) * (1+2));

  song->title = "Cantaloupe Island";
  puts(song->title);

  strcat(song->tags[0], "60s");
  strcat(song->tags[1], "jazz");
  puts(song->tags[1]);
}
