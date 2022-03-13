// gcc -I ./ tag-join.c 06-module-b.c -o 06-module-b

#include <stdio.h>
#include <my-songs.h>
#include <tag-join.h>

int main() {
  int cur; // current cursor
  struct Song song;
  size_t len_songs, len_tags;

  len_songs = sizeof(songs)
            / sizeof(songs[0]);

  for(cur = 0; cur < len_songs; cur++) {
    song = songs[i];
    len_tags = sizeof(song.tags)
             / sizeof(Tag);

    printf("%s: ", song.title);
    printf("%s\n", tag_str(song.tags, len_tags));
  }
}
