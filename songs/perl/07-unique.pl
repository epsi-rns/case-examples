#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

use File::Basename;
use lib dirname(__FILE__);

use MySongs;
use MyHelperFlatten;

sub unique {
  my %seen;
  grep !$seen{$_}++, @_;
}

say join(":", 
  unique(
    MyHelperFlatten::flatten(
      @MySongs::songs)));



