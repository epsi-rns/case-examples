#include <iostream>
#include <string>

using namespace std;

int main () {
  string str1 = "Yello";
  string str2 = "Earth";

  str1.append(", ");
  str1.append(str2);
  cout << str1 << endl;

  return 0;
}

