#include <iostream>
#include <string>
#include <sstream>

using namespace std;

int main () {
  string str1 = "Yello";
  string str2 = "Earth";
  stringstream stream;

  stream << str1 << ", " << str2;
  cout << stream.str() << endl;
}

