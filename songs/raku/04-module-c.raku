#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;

for @songs {
  if (%$_.keys.grep(/tags/)) {
    say %$_<title> ~ " is "
      ~ join(":", @( %$_<tags> ));
  }
}
