#!/usr/bin/perl
# To define a 2D matrix, and print its transpose
use strict;
use warnings;

my @arr = ([1, 2, 3], [4, 5, 6]);
print "Original Matrix\n";
print "@$_\n" for @arr;
print "\nTransposed Matrix\n";
for(my $i = 0; $i < 3; $i++)
{
    for(my $j = 0; $j < 2; $j++)
    {
        print $arr[$j][$i]." ";
    }
    print "\n";
}
