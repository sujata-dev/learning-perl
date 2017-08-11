#!/usr/bin/env perl
# Subroutine to accept two numbers as arguments, and return the product
use strict;
use warnings;

sub product
{
    return $_[0] * $_[1];
}
print product(2, 3);
