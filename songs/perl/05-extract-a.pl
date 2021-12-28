#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

use File::Basename;
use lib dirname(__FILE__);

use MySongs;

my @tagss = ();

for my $song ( @MySongs::songs ) {
  my %song_hash = %$song;
  
  if (exists($song_hash{'tags'})) {
    push @tagss, $song_hash{'tags'};
  }
}

for my $tags ( @tagss ) {
  say join(":", @$tags);
}
