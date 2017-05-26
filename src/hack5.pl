#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-review-loop
use strict;
use warnings;

my $j;
my $n = <>;
for(my $i = 0; $i < $n; $i++)
{
    my $str = <>;
    my @arr = split("", $str);
    my $len = @arr;
    for($j = 0; $j < $len; $j = $j + 2)
    {
        print $arr[$j];
        chomp(@arr);    #remove newline from end of each element in array
    }
    print(" ");
    for($j = 1; $j < $len; $j = $j + 2)
    {
        print $arr[$j];
    }
    print("\n");
}
