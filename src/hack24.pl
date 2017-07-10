#!/usr/bin/perl
# https://www.hackerrank.com/challenges/migratory-birds/submissions/code/48227668
use strict;
use warnings;

chomp(my $n = <>);
chomp(my $str = <>);
my @arr = split(" ", $str);
my @count = (0) x 5;
my ($flag, $max) = (0, 0);
for(my $i = 0; $i < $n; $i++)
{
    $count[$arr[$i] - 1]++;
}
for(my $i = 0; $i < 5; $i++)
{
    if($count[$max] < $count[$i])
    {
        $max = $i;
    }
}
if($flag == 0)
{
    print $max + 1;
}
