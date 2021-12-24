#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

my @tags = ('rock',
  'jazz', 'rock', 'pop', 'pop');

sub exclude {
  my $value = shift;
  grep(!/$value/, @_);
}

say join(':', exclude('rock', @tags));
