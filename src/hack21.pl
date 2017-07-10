#!/usr/bin/perl
# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/submissions/code/46348540
use strict;
use warnings;

chomp(my $n = <>);
chomp(my $str = <>);
my @arr = split(" ", $str);
my ($min, $max) = ($arr[0], $arr[0]);
my ($countmin, $countmax) = (0, 0);
for(my $i = 0; $i < $n; $i++)
{
    if($min > $arr[$i])
    {
        $min = $arr[$i];
        $countmin++;
    }
    if($max < $arr[$i])
    {
        $max = $arr[$i];
        $countmax++;
    }
}
print $countmax." ".$countmin;
