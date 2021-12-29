#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;

my @songs_tags = (
  $_<tags>
  if 'tags' ∈ $_.keys
  for @songs
);

my @tags = @songs_tags
  .List.flat.unique;

join(":", @tags).say;
