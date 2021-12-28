#!/usr/bin/perl
use strict;
use warnings;

sub say {print @_, "\n"}

my $tags_ref = ['rock',
  'jazz', 'rock', 'pop', 'pop'];

say join(':', @$tags_ref);
