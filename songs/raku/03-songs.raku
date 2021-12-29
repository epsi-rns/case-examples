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

for @songs -> %song_hash {
  if (%song_hash<tags>:exists) {
    my $tags = %song_hash<tags>;
    say %song_hash<title> ~ " is "
      ~ join(":", @$tags);
  }
}
