package MyHelperFlatten;

use strict;
use warnings;

sub flatten {
  my @tagss = ();

  for (@_) { 
    if (exists $_->{'tags'}) {
      push @tagss, @{ $_->{'tags'} };
    }
  }

  return @tagss;
}

1;
