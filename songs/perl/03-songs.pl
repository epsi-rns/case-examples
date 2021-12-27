#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

my @songs = (
  { title => 'Cantaloupe Island',
    tags  => ['60s', 'jazz'] },
  { title => 'Let It Be',
    tags  => ['60s', 'rock'] },
  { title => 'Knockin\' on Heaven\'s Door',
    tags  => ['70s', 'rock'] },
  { title => 'Emotion',
    tags  => ['70s', 'pop'] },
  { title => 'The River'}
);

for my $song ( @songs ) {
  my %song_hash = %$song;
  
  if (exists($song_hash{'tags'})) {
    my $tags = $song_hash{'tags'};
    say $song_hash{'title'} . " is "
      . join(":", @$tags);
  }
}
