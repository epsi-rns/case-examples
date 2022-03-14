#include <stdio.h>
#include <string.h>

struct Song {
  char *title;
  char *tags[5];
} song = {
  .title = "Cantaloupe Island",
  .tags  = {"60s", "jazz"}
};

int main() {
  puts(song.title);
  puts(song.tags[1]);
}



