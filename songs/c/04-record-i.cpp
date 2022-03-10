#include <iostream>
#include <string>
#include <vector>

using namespace std;

struct Song {
  string title;
  vector<string> tags;
} song = {
  .title = "Cantaloupe Island",
  .tags  = { "60s", "jazz"}
};

int main() {
  cout << song.title << endl;
  cout << song.tags[1] << endl;
}



