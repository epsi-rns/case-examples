// g++ -I ./ 06-module-b.c -o 06-module-b

#include <iostream>
#include <my-songs.h>
#include <algorithm>
#include <boost/algorithm/string/join.hpp>

using namespace std;

int main() {
  for_each (
    songs.begin(), songs.end(),
    [](Song song) {
        cout << song.title << ": ";
        cout << boost::algorithm::join(
          song.tags, ", ") << "." << endl;
      });
}

