unit module MyHelperUnique;

sub unique(@tags) is export {
  if (@tags <= 1) {
    @tags;
  } else {
    # array[$head:@tail]
    my ($head, @tail) = @tags;

    # recursive unique
    my @xcld = @tail.grep(none /$head/);
    my @uniq = unique(@xcld);

    # returned array
    @uniq.unshift: $head;
  }
}
