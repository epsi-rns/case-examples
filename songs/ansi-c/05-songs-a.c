#include <stdio.h>
#include <string.h>

typedef char tag[5];

struct Song {
  char *title;
  tag tags[2];
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



