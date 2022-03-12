#include <stdio.h>

struct Song {
  char *title;
  char tags[2][5];
};

int main() {
  struct Song songs[] = {
    { "Cantaloupe Island",
      {"60s", "jazz"} },
    { "Let It Be",
      {"60s", "rock"} }
  };
  puts(songs[1].title);
  puts(songs[1].tags[1]);
}



