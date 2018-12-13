#!/usr/bin/env perl
# reverse an array without affecting special characters
use strict;
use warnings;


chomp(my $str = <>);
my @arr = split("", $str);
my ($x, $y) = (-1, scalar(@arr));

for(0 .. @arr - 1)
{
    if($_ < (@arr / 2))
    {
        $x++;
        $y--;

        if($x < $y)
        {
            $x++ while((!($arr[$x] =~ /[a-zA-Z]/)) && ($x < $y));

            $y-- while((!($arr[$y] =~ /[a-zA-Z]/)) && ($x < $y));

            ($arr[$x], $arr[$y]) = ($arr[$y], $arr[$x]);
        }
    }
}
print(join("", @arr));
