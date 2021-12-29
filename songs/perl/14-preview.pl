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
  { title => 'The River'},
);

my %seen;

my @songs_tags = grep {
    !$seen{$_}++
  } map {
    @{ $_->{'tags'} }
  } grep {
    exists($_->{'tags'}) 
  } @songs;

say join(":", @songs_tags);
