#include <iostream>
#include <string>
#include <sstream>
#include <vector>
#include <algorithm>

using namespace std;

int main () {
  vector<string> tags {
    "rock", "jazz", "rock", "pop", "pop"};
  stringstream stream;

  if (tags.size() > 1)
    for_each (
      tags.begin(), tags.end()-1,
      [&stream](string s) {
        stream << s << ", ";
      });

  stream << tags.back() << '.';
  cout << stream.str() << endl;
}

