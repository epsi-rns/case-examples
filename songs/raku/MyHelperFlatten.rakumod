unit module MyHelperFlatten;

sub flatten is export {
  my @tagss = ();

  for (@_) { 
    if (%$_<tags>:exists) {
      @tagss.push: @( %$_<tags> ).Slip;
    }
  }

  return @tagss;
}




