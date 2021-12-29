#!/usr/bin/raku

my @tags = ('rock',
  'jazz', 'rock', 'pop', 'pop');

sub exclude($value, @tags) {
  @tags.grep(none /$value/);
}

join(':', exclude('rock', @tags)).say;
