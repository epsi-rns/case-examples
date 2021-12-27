#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

use File::Basename;
use lib dirname(__FILE__);

use MySongs;

my @songs_tags = map {
    @{ $_->{'tags'} }
  } grep {
    exists($_->{'tags'}) 
  } @MySongs::songs;

say join(":", @songs_tags);
