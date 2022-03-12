// g++ -I ./ 06-module-a.c -o 06-module-a

#include <iostream>
#include <my-songs.h>

using namespace std;

int main() {
  cout << songs[0].title << endl;
  cout << songs[0].tags[1] << endl;
}

