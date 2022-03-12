#include <stdio.h>
#include <string.h>

typedef char tag[5];

struct Song {
  char *title;
  tag tags[10];
};

int main() {
  struct Song *songs = new Song[2];

  song[0].title = "Cantaloupe Island";
/*
  songs[0] = {
    "Cantaloupe Island",
    {"60s", "jazz"} };

  songs[1] = {
    "Let It Be",
    {"60s", "rock"} };

  puts(songs[1].title);
  puts(songs[1].tags[1]);
*/
  delete songs;
}
