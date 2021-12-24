#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

use File::Basename;
use lib dirname(__FILE__);

use MySongs;

for my $song ( @MySongs::songs ) {
  my %song_hash = %$song;
  
  if (exists($song_hash{'tags'})) {
    my $tags = $song_hash{'tags'};
    say $song_hash{'title'} . " is "
      . join(":", @$tags);
  }
}
