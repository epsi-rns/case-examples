#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;

for @songs {
  if (%$_<tags>:exists) {
    say %$_<title> ~ " is "
      ~ join(":", @( %$_<tags> ));
  }
}
