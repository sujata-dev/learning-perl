#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-2d-arrays
use strict;
use warnings;

my @arr = ();
my ($row, $sum, $i, $j) = (6, 0, 0, 0);
my ($str, $max);
while($i != $row)
{
    $j = 0;
    $str = <>;
    chomp($str);
    ($arr[$i][$j], $arr[$i][$j + 1], $arr[$i][$j + 2], $arr[$i][$j + 3],
        $arr[$i][$j + 4], $arr[$i][$j + 5]) = split(" ", $str);
    $i++;
}
for($i = 0; $i <= 3; $i++)
{
    for($j = 0; $j <= 3; $j++)
    {
        $sum = $arr[$i][$j] + $arr[$i][$j + 1] + $arr[$i][$j + 2]
                    + $arr[$i + 1][$j + 1] + $arr[$i + 2][$j]
                    + $arr[$i + 2][$j + 1] + $arr[$i + 2][$j + 2];
        if($i == 0 && $j == 0)
        {
            $max = $sum;
        }
        if($sum > $max)
        {
            $max = $sum;
        }
    }
}
print $max;
