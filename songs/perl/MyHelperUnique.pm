package MyHelperUnique;

use strict;
use warnings;

sub unique {
  if (@_ <= 1) {
    @_;
  } else {
    # array[$head:@tail]
    my $head = shift;
    my @tail = @_;

    # recursive unique
    my @xcld = grep(!/$head/, @tail);    
    my @uniq = unique(@xcld);

    # returned array
    unshift @uniq, $head;
    @uniq;
  }
}

1;
