#!/usr/bin/perl
# https://www.hackerrank.com/challenges/mini-max-sum/submissions/code/45824896
use strict;
use warnings;

chomp(my $str = <>);
my @sum = ();
my @arr = split(" ", $str);
for(my $i = 0; $i < 5; $i++)
{
    $sum[$i] = 0;
}
for(my $i = 0; $i < 5; $i++)
{
    for(my $j = 0; $j < 5; $j++)
    {
        if($i != $j)
        {
            $sum[$i] = $sum[$i] + $arr[$j];
        }
    }
}
@sum = sort @sum;
print $sum[0]." ".$sum[4];
