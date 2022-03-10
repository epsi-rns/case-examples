#include <stdio.h>
#include <string.h>

struct Song {
  char title[50];
} song;

int main() {
  strcpy(song.title, "Cantaloupe Island");
  puts(song.title);
}



