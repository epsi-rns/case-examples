#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;
use MyHelperFlatten;
use MyHelperUnique;

say join(':', unique(flatten(@songs)));
