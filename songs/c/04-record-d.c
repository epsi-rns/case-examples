#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Song {
  char title[15];
  char tags[2][5];
} song;

int main() {
  strcpy( song.title, "Cantaloupe Island" );
  puts(song.title);

  strcat(song.tags[0], "60s");
  strcat(song.tags[1], "jazz");
  puts(song.tags[1]);
}
