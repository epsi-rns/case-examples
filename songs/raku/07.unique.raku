#!/usr/bin/raku
use lib $*PROGRAM.dirname;
use MySongs;
use MyHelperFlatten;

join(":", (flatten @songs).unique).say;
