#!/usr/bin/raku

my %song =
  title  => 'Cantaloupe Island',
  tags   => ('60s', 'jazz')
;

my @tags = %song<tags>;
say %song<title>;
say join(":", @tags);
say %song<tags>[1];
