#!/usr/bin/env perl
# to print an array in pendulum arrangement, wherein the min element
# comes in center point of array. The next number in ascending order,
# goes to the right, the next to next number goes to the left of min number,
# continuing like a pendulum.
use strict;
use warnings;

chomp(my $n = <>);
chomp(my $str = <>);
my @arr = sort {$a <=> $b} split(/\s+/, $str);
my @newarr;
my ($j, $k) = (0, 0);
my $i = ($n % 2 == 0) ? ($n / 2) - 1 : ($n / 2);

for(0 .. @arr - 1)
{
    if($_ % 2 != 0)
    {
        $newarr[$i + $j] = $arr[$k];
        $j--;
    }
    else
    {
        $newarr[$i - $j] = $arr[$k];
    }
    $j++;
    $k++;
}

for(0 .. @newarr - 1)
{
    print("$newarr[$_] ");
}
