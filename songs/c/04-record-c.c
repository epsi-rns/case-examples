#include <stdio.h>
#include <string.h>

struct Song {
  char *title;
} song;

int main() {
  song.title = "Cantaloupe Island";
  puts(song.title);
}



