#include <iostream>
#include <string>
#include <vector>

using namespace std;

struct Song {
  string title;
  vector<string> tags;
} song;

int main() {
  song.title = "Cantaloupe Island";
  song.tags  = { "60s", "jazz"};
  cout << song.title << endl;
  cout << song.tags[1] << endl;
}



