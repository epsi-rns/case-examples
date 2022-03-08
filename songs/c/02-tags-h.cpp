#include <iostream>
#include <string>
#include <vector>
#include <boost/algorithm/string/join.hpp>

using namespace std;

inline string tag_join(
  vector<string> tags) {
    return boost::algorithm::join(tags, ", ");
}

int main () {
  vector<string> tags {
    "rock", "jazz", "rock", "pop", "pop"};

  cout << tag_join(tags) << endl;

  return 0;
}

