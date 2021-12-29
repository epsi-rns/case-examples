#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;

my @tagss = ();

for @MySongs::songs -> %song_hash {
  if (%song_hash<tags>:exists) {
    my $tags = %song_hash<tags>;
    push @tagss, $tags;
  }
}

join(":", @tagss.List.flat).say;
