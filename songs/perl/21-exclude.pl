#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

my @tags = ('rock',
  'jazz', 'rock', 'pop', 'pop');

sub exclude {
  my ($value, @tags) = @_;
  grep(!/$value/, @tags);
}

say join(':', exclude('rock', @tags));
