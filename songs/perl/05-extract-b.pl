#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

use File::Basename;
use lib dirname(__FILE__);

use MySongs;

my @tagss = ();

for (@MySongs::songs) { 
  if (exists $_->{'tags'} ) {
    push @tagss, $_->{'tags'};
  }
}

for (@tagss) {
  say join(":", @$_);
}
