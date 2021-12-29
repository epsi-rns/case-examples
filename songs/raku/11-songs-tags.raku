#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;

my @songs_title = @songs.map: *<title>;
say join(':', @songs_title);

my @songs_tags = (@songs
  .grep: *.keys.grep(/tags/))
  .map: *<tags>;

for (@songs_tags) {
  say join(":", @$_);
}

