#!/usr/bin/perl
# Subroutine to de-duplicate a list
use strict;
use warnings;


sub dedup
{
    my %unique;
    foreach(@_){$unique{$_}++;}
    return keys %unique;
}

print dedup(1,2,6,9,2,1,3);
