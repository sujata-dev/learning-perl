#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-arrays
use strict;
use warnings;

my $n=<>;
my $str=<>;
my @arr=split(" ",$str);
for(my $i = $n - 1; $i >= 0; $i--)
{
    print($arr[$i]." ");
}
