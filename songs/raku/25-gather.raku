#!/usr/bin/raku

sub produce(@songs) {
  gather for (@songs) { 
    @( %$_<tags> ).Slip.map: *.take
    if ('tags' ∈ %$_.keys);
}}

# main: entry point
use lib $*PROGRAM.dirname;
use MySongs;

join(":", produce(@songs).unique).say;
