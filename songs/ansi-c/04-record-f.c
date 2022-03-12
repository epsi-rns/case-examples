#include <stdio.h>
#include <string.h>

typedef char Tag[5];

struct Song {
  char *title;
  Tag tags[];
} song = {
  .title = "Cantaloupe Island",
  .tags  = {"60s", "jazz"}
};

int main() {
  puts(song.title);
  puts(song.tags[1]);
}



