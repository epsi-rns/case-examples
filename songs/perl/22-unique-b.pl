#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

use File::Basename;
use lib dirname(__FILE__);

use MySongs;
use MyHelperFlatten;
use MyHelperUnique;

say join(':',
  MyHelperUnique::unique(
    MyHelperFlatten::flatten(
      @MySongs::songs
)));
