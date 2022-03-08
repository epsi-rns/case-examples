#include <iostream>
#include <string>
#include <vector>
#include <boost/algorithm/string/join.hpp>

using namespace std;

int main () {
  vector<string> tags {
    "rock", "jazz", "rock", "pop", "pop"};

  string tag_str =
    boost::algorithm::join(tags, ", ");
  cout << tag_str << endl;

  return 0;
}

