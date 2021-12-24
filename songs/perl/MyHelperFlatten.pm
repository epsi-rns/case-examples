package MyHelperFlatten;

use strict;
use warnings;

sub flatten {
  my @songs = @_;
  my @tagss = ();

  for my $song ( @songs ) {
    my %song_hash = %$song;
  
    if (exists($song_hash{'tags'})) {
      push @tagss, @{ $song_hash{'tags'} };
    }
  }

  return @tagss;  
}

1;
