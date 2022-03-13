// gcc -I ./ tag-util.c 07-extract-c.c -o 07-extract-c

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <my-songs.h>
#include <tag-util.h>

int main() {
  struct Song song;

  int cur;
  int len_each, len_total;
  char *tag_string;

  size_t len_songs, len_tags;
  Tag  *tags_each;
  Tag  *tags_all;

  len_total = 0;
  tags_all  = NULL; // or malloc(len_total);

  len_songs = sizeof(songs)
            / sizeof(songs[0]);

  for(cur = 0; cur <= len_songs-1; cur++) {
    song = songs[cur];

    len_tags  = sizeof(song.tags)
              / sizeof(Tag);
    len_each  = tag_count(song.tags, len_tags);
    tags_each = tag_array(song.tags, len_tags);

    if (len_each > 0) {
      tags_all = arr_concat(
        tags_all, len_total, tags_each, len_each);
      len_total += len_each;
    }
  }

  tag_string = tag_str(tags_all, len_total);
  printf("%s\n", tag_string);
}


