#!/usr/bin/raku

sub produce(@songs) {
  gather {
    for (@songs) { 
      if ('tags' ∈ %$_.keys) {
        @( %$_<tags> ).Slip
          .map: *.take;
      }
    }
  }
}

# main: entry point
use lib $*PROGRAM.dirname;
use MySongs;

my @tags = produce(@songs);
join(":", @tags.unique).say;
