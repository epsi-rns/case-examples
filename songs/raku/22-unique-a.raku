#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MyHelperUnique;

my @tags = ('rock',
  'jazz', 'rock', 'pop', 'pop');

say join(':', unique(@tags));
