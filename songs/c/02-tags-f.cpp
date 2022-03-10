#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

void tag_out (string s) {
  cout << s << ' ';
}

int main () {
  vector<string> tags {
    "rock", "jazz", "rock", "pop", "pop"};

  for_each (
    tags.begin(), tags.end(), tag_out);
  cout << endl;
}

