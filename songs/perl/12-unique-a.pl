#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

use File::Basename;
use lib dirname(__FILE__);

use MyHelperUnique;

my @tags = ('rock',
  'jazz', 'rock', 'pop', 'pop');

say join(':',
  MyHelperUnique::unique(@tags));
