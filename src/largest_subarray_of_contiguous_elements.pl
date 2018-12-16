#!/usr/bin/env perl
# find length of longest subarray that can be arranged in a continuous sequence
use strict;
use warnings;


chomp(my $str = <>);
my @arr = split(" ", $str);
my $count = 1;

for my $i (0 .. @arr - 1)
{
    my %hash;
    my ($min, $max) = ($arr[$i], $arr[$i]);
    $hash{$arr[$i]} = 1;

    for my $j ($i + 1 .. @arr - 1)
    {
        last if(exists($hash{$arr[$j]}));

        $min = $min < $arr[$j] ? $min : $arr[$j];
        $max = $max > $arr[$j] ? $max : $arr[$j];
        $hash{$arr[$j]} = 1;

        if(abs($max - $min) == ($j - $i))
        {
            $count = $count > (($max - $min) + 1) ? $count : (($max - $min) + 1);
        }
    }
}

print($count);
