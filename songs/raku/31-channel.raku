#!/usr/bin/raku

my $c = Channel.new;

my @tags = ('rock',
  'jazz', 'rock', 'pop', 'pop');

my $item;

start {
  @tags.map: -> $tag { $c.send: $tag; }
  $c.send: Nil;
  $c.close;
}

loop {
  $item = $c.receive;
  if ($item) {
    $item.say;
  } else {
    last;
  }
}


