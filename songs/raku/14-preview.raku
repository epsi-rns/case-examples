#!/usr/bin/raku

my @songs =
  { title => 'Cantaloupe Island',
    tags  => ('60s', 'jazz') },
  { title => 'Let It Be',
    tags  => ('60s', 'rock') },
  { title => 'Knockin\' on Heaven\'s Door',
    tags  => ('70s', 'rock') },
  { title => 'Emotion',
    tags  => ('70s', 'pop') },
  { title => 'The River'}
;

my @songs_tags = ((@songs
  .grep: 'tags' ∈ *.keys)
  .map: *<tags>);

my @tags = @songs_tags.List.flat.unique;

join(":", @tags).say;
