// gcc -I./ tag-join.c 05-songs-c.c -o 05-songs-c

#include <stdio.h>
#include <tag-join.h>

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
  int i;
  struct Song song;
  size_t n, m;

  n = sizeof(songs)/sizeof(songs[0]);

  for(i=0; i <= n-1; i++) {
    song = songs[i];
    m = sizeof(song.tags)
      / sizeof(song.tags[0]);

    printf("%s: ", song.title);
    printf("%s\n", tag_str(song.tags, m));
  }
}
