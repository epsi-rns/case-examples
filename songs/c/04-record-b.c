#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Song {
  char *title;
};

int main() {
  struct Song song;
  song.title = malloc(sizeof(char *));
  strcpy(song.title, "Cantaloupe Island");
  puts(song.title);
}



