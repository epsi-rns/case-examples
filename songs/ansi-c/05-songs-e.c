// gcc -I./ tag-join-r.c 05-songs-c.d -o 05-songs-d

#include <stdio.h>
#include <tag-join-r.h>

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
  int cur; // current cursor
  struct Song song;
  struct TagsRecord record;
  size_t len_songs, len_tags;

  len_songs = sizeof(songs)
            / sizeof(songs[0]);

  for(cur = 0; cur < len_songs; cur++) {
    song = songs[cur];
    len_tags = sizeof(song.tags)
             / sizeof(song.tags[0]);

    record.length = len_tags;
    record.tags   = song.tags;

    printf("%s: ", song.title);
    printf("%s\n", tag_str_r(record));
  }
}
