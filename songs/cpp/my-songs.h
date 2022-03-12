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
    {"60s", "rock"} },
  { "Knockin' on Heaven's Door",
    {"70s", "rock"} },
  { "Emotion",
    {"70s", "pop"} },
  { "The River", {} }
};
