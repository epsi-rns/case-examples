#include <iostream>
#include <string>
#include <vector>

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
      {"60s", "rock"} }
  });

  songs->push_back({
    "Knockin' on Heaven's Door",
    {"70s", "rock"} });

  cout << (*songs)[0].title << endl;
  cout << (*songs)[0].tags[1] << endl;

  cout << songs->at(2).title << endl;
  cout << songs->at(2).tags[1] << endl;
  
  delete songs;
}



