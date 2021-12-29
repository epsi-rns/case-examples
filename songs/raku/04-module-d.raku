#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;

for @songs {
  if ('tags' ∈ %$_.keys) {
    say %$_<title> ~ " is "
      ~ join(":", @( %$_<tags> ));
  }
}
