#!/usr/bin/env perl
# convert array into zig-zag fashion (a < b > c < d > e < f)
use strict;
use warnings;


chomp(my $str = <>);
my @arr = split(" ", $str);
my $count = 0;

for my $x(0 .. @arr - 2)
{
    if(($arr[$x] > $arr[$x + 1] && ($count % 2 == 0)) ||
        ($arr[$x] < $arr[$x + 1] && ($count % 2 != 0)))
    {
        ($arr[$x], $arr[$x + 1]) = ($arr[$x + 1], $arr[$x])
    }
    $count++;
}

print(join(" ", @arr));


