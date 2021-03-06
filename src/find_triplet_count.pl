#!/usr/bin/env perl
# Convert array into Zig-Zag fashion
use strict;
use warnings;


chomp(my $arr = <>);
chomp(my $sum = <>);

my @arr = sort{$a <=> $b} split(" ", $arr);
my $count = 0;

for my $x (0 .. @arr - 1)
{
    for my $y (($x + 1) .. @arr - $x)
    {
        for my $z (($y + 1) .. @arr - $y)
        {
            $count++ if(($arr[$x] + $arr[$y] + $arr[$z]) < $sum);
        }
    }
}

print($count);

