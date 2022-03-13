// gcc -I ./ tag-util.c 07-extract-b.c -o 07-extract-b

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <my-songs.h>
#include <tag-util.h>

int main() {
  struct Song song;

  int cur, add;
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
      printf(" [%d] ", len_total + len_each);

      tags_all = realloc(tags_all,
        sizeof(Tag) * (len_total + len_each));

      for(add = 0; add <= len_each-1; add++)
        strcpy(
          tags_all[len_total+add],
          tags_each[add]);
      len_total += len_each;

      tag_string = tag_str(tags_all, len_total);
      printf("%s\n", tag_string);
    }
  }
}

