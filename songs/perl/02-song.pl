#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

my %song = (
    title  => 'Cantaloupe Island',
    tags   => ['60s', 'jazz']
);

my $tags = $song{tags};
say $song{title};
say join(":", @$tags);
say $song{tags}[1];
