#!/usr/bin/perl
# https://www.hackerrank.com/challenges/staircase/submissions/code/45817078
use strict;
use warnings;

chomp(my $n = <>);
for(my $i = 0; $i < $n; $i++)
{
    for(my $j = $i + 1; $j < $n; $j++)
    {
        print " ";
    }
    my $num = $i + 1;
    while($num != 0)
    {
        print "#";
        $num--;
    }
    print "\n";
}
