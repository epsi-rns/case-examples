#!/usr/bin/raku

sub produce($c, @songs) {
  for (@songs) { 
    if ('tags' ∈ %$_.keys) {
      @( %$_<tags> ).Slip
        .map: -> $tag { $c.send: $tag; }
      next; # dummy
    }
  }

  $c.send: Nil;
  $c.close;
}

sub consume($c) {
  my $item;
  my @tags = ();

  loop {
    $item = $c.receive;
    if ($item) {
      @tags.push: $item;
    } else {
      join(":", @tags.unique).say;
      last;
    }
  }
}

# main: entry point
use lib $*PROGRAM.dirname;
use MySongs;

my $chan = Channel.new;

start { produce($chan, @songs); }
consume($chan)
