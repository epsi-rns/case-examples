#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int main () {
  vector<string> tags {
    "rock", "jazz", "rock", "pop", "pop"};

  for_each (
    tags.begin(), tags.end(), [](string s) {
      cout << ' ' << s;
    });
  cout << endl;

  return 0;
}

