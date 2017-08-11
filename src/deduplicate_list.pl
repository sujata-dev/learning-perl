#!/usr/bin/env perl
# Subroutine to de-duplicate a list
use strict;
use warnings;

sub dedup
{
    return keys %{{map { $_ => 1 } @_}};
}

print dedup(1, 2, 6, 9, 2, 1, 3);
