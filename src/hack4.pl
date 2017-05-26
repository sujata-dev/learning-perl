#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-loops
use strict;
use warnings;

my $n = <>;
my $ans;
for(my $i = 1; $i <= 10; $i++)
{
    printf("%d x %d = %d\n", $n, $i, ($n * $i));
}
