#!/usr/bin/perl
# https://www.hackerrank.com/challenges/birthday-cake-candles/problem
use strict;
use warnings;

chomp(my $n = <>);
chomp(my $str = <>);
my @arr = split(' ', $str);
my ($count, $max) = (0, $arr[0]);
for(my $i = 0; $i < $n; $i++)
{
    if($max < $arr[$i])
    {
        $max = $arr[$i];
    }
}
for(my $i = 0; $i < $n; $i++)
{
    if($max == $arr[$i])
    {
        $count++;
    }
}
print $count;
