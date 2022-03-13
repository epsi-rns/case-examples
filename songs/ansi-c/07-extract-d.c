// gcc -I ./ tag-util.c songs-helper.c 07-extract-d.c -o 07-extract-d

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tag-util.h>
#include <songs-helper.h>

int main() {
  Tag  *tags_all;
  int  len_total;
  char *tag_string;

  get_songs_tags(&tags_all, &len_total);

  tag_string = tag_str(tags_all, len_total);
  printf("%s\n", tag_string);
}

