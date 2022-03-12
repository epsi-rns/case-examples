#include <iostream>
#include <string>

using namespace std;

struct Song {
  string title;
} song;

int main() {
  song.title = "Cantaloupe Island";
  cout << song.title << endl;
}



