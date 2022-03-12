#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <boost/algorithm/string/join.hpp>

using namespace std;

struct Song {
  string title;
  vector<string> tags;
};

int main() {
  vector<Song> *songs = new vector<Song>();

  songs->assign({
    { "Cantaloupe Island",
      {"60s", "jazz"} },
    { "Let It Be",
      {"60s", "rock"} },
    { "Knockin' on Heaven's Door",
      {"70s", "rock"} }
  });

  for_each (
    songs->begin(), songs->end(),
    [](Song song) {
        cout << song.title << ": ";
        cout << boost::algorithm::join(
          song.tags, ", ") << "." << endl;
      });

  delete songs;
}



