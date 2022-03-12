#include <stdio.h>

typedef char Tag[5];

struct Song {
  char *title;
  Tag tags[10];
};

struct Song songs[] = {
    { "Cantaloupe Island",
      {"60s", "jazz"} },
    { "Let It Be",
      {"60s", "rock"} }
  };

int main() {
  puts(songs[1].title);
  puts(songs[1].tags[1]);
}
