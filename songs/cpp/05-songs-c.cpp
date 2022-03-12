#include <iostream>
#include <string>
#include <vector>

using namespace std;

struct Song {
  string title;
  vector<string> tags;
};

const vector<Song> songs = {
  { "Cantaloupe Island",
    {"60s", "jazz"} },
  { "Let It Be",
    {"60s", "rock"} }
};

int main() {
  cout << songs[0].title << endl;
  cout << songs[0].tags[1] << endl;
}



