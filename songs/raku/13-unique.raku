#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;

my @songs_tags = ((@songs
  .grep: 'tags' ∈ *.keys)
  .map: *<tags>);

my @tags = @songs_tags.List.flat.unique;

join(":", @tags).say;
