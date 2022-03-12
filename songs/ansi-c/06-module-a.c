// gcc -I ./ tag-join.c 06-module-a.c -o 06-module-a

#include <stdio.h>
#include <my-songs.h>

int main() {
  puts(songs[1].title);
  puts(songs[1].tags[1]);
}
