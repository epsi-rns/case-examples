#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;

my @songs_title =
  ( $_<title> for @songs );
say join(':', @songs_title);

my @songs_tags = (
  $_<tags>
  if $_.keys.grep(/tags/)
  for @songs
);

for (@songs_tags) {
  say join(":", @$_);
}

