#!/usr/bin/perl
# Subroutine to de-duplicate a list
use strict;
use warnings;

my (@arr1, @arr2);
sub dedup
{
    @arr1 = @arr2 = @_;
}

dedup((1,2,3,4));
print @arr1;
print "\n";
print @arr2;
