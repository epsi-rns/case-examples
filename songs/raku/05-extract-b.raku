#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;

my @tagss = ();

for @songs {
  if (%$_<tags>:exists) {
    push @tagss, %$_<tags>;
  }
}

for (@tagss) {
  join(":", @$_).say;
}

