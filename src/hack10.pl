#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-sorting
use strict;
use warnings;

my $n = <>;
chomp($n);
my @arr = ();
my $str = <>;
chomp($str);
my ($i, $j, $swap);
my $count = 0;
for($i = 0; $i < $n; $i++)
{
    @arr = split(' ', $str);
}

for($i = 0; $i < $n - 1; $i++)
{
    for($j = 0; $j < $n - $i - 1; $j++)
    {
        if($arr[$j] > $arr[$j + 1])
        {
            $count++;
            $swap = $arr[$j];
            $arr[$j] = $arr[$j + 1];
            $arr[$j + 1] = $swap;
        }
    }
}
print("Array is sorted in $count swaps.\n");
print("First Element: ".$arr[0]);
print("\nLast Element: ".$arr[$n - 1]);
