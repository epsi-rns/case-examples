#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;
use MyHelperFlatten;

say join ":", (flatten @songs);
