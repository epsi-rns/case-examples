#include <stdio.h>
#include <string.h>

typedef char tag[5];

struct Song {
  char *title;
  tag tags[];
} song = {
  .title = "Cantaloupe Island",
  .tags = {"60s", "jazz"}
};

int main() {
  puts(song.title);
  puts(song.tags[1]);
}



