#!/usr/bin/env perl
# find the maximum for each and every contiguous subarray of size K.
use strict;
use warnings;


chomp(my $str = <>);
my ($n, $k) = split(/\s+/, $str);
chomp($str = <>);
my @arr = split(/\s+/, $str);

for my $i (0 .. @arr - $k)
{
    my $max = $arr[$i];
    for my $j ($i .. $i + $k - 1)
    {
        $max = $arr[$j] if($max < $arr[$j]);
    }
    print("$max ");
}
