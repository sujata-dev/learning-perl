#!/usr/bin/perl
# https://www.hackerrank.com/challenges/divisible-sum-pairs/submissions/code/47312362
use strict;
use warnings;

chomp(my $str = <>);
my ($n, $k) = split(" ", $str);
chomp($str = <>);
my @arr = split(" ", $str);
my $count = 0;
for(my $i = 0; $i < $n; $i++)
{
    for(my $j = 0; $j < $n; $j++)
    {
        if($i < $j && ($arr[$i] + $arr[$j]) % $k == 0)
        {
            $count++;
        }
    }
}
print $count;
