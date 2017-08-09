#!/usr/bin/perl
# Subroutine to de-duplicate a list
use strict;
use warnings;

my %unique;
sub dedup
{
    foreach(@_){$unique{$_}++};
}

dedup(1,2,6,9,2,1,3);
print keys %unique;
