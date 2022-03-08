#include <iostream>
#include <string>
#include <sstream>
#include <vector>
#include <algorithm>

using namespace std;

string tag_join(vector<string> *vect_tags);

int main () {
  vector<string> tags {
    "rock", "jazz", "rock", "pop", "pop"};

  cout << tag_join(&tags) << endl;
  return 0;
}

string tag_join(vector<string> *vect_tags) {
  stringstream stream;

  if (vect_tags->size() > 1)
    for_each (
      vect_tags->begin(), vect_tags->end()-1,
      [&stream](string s) {
        stream << s << ", ";
      });

  stream << vect_tags->back() << '.';

  return stream.str();
}


