// gcc -I ./ tag-util.c 07-extract-a.c -o 07-extract-a

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <my-songs.h>
#include <tag-util.h>

int main() {
  int i, len_each;
  struct Song song;
  size_t len_songs, len_tags;
  Tag  *tags_each;
  char *tag_string;

  len_songs = sizeof(songs)
            / sizeof(songs[0]);

  for(i = 0; i <= len_songs-1; i++) {
    song = songs[i];

    len_tags  = sizeof(song.tags) / sizeof(Tag);
    len_each  = tag_count(song.tags, len_tags);
    tags_each = tag_array(song.tags, len_tags);

    if (tags_each != NULL) {
      tag_string = tag_str(tags_each, len_each);
      printf("%s\n", tag_string);
    }
  }
}

