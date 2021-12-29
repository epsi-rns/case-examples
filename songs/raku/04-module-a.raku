#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;

for @MySongs::songs -> %song_hash {
  if (%song_hash<tags>:exists) {
    my $tags = %song_hash<tags>;
    say %song_hash<title> ~ " is "
      ~ join(":", @$tags);
  }
}
