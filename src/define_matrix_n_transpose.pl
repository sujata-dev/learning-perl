#!/usr/bin/env perl
# To define a 2D matrix, and print its transpose
use strict;
use warnings;

my @arr = ([1, 2, 3], [4, 5, 6]);
print "Original Matrix\n";
print "@$_\n" for @arr;
print "\nTransposed Matrix\n";
for(0..2)
{
    my $i=$_;
    for(0..1)
    {
        my $j=$_;
        print $arr[$j][$i]." ";
    }
    print "\n";
}
