// gcc -I ./ tag-join.c 06-module-b.c -o 06-module-b

#include <stdio.h>
#include <my-songs.h>
#include <tag-join.h>

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
