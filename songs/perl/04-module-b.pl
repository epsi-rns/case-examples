#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

use File::Basename;
use lib dirname(__FILE__);

use MySongs;

for (@MySongs::songs) {  
  if (exists $_->{'tags'}) {
    say @$_{'title'} . " is "
      . join(":", @{ $_->{'tags'} });
  }
}
