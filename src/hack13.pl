#!/usr/bin/perl
# https://www.hackerrank.com/challenges/plus-minus/submissions/code/45819098
use strict;
use warnings;

chomp(my $n = <>);
chomp(my $str = <>);
my @arr = split(" ", $str);
my ($pos, $neg, $zer) = (0, 0, 0);
for(my $i = 0; $i < $n ; $i++)
{
    if($arr[$i] > 0)
    {
        $pos++;
    }
    elsif($arr[$i] < 0)
    {
        $neg++;
    }
    else
    {
        $zer++;
    }
}
$pos /= $n;
$neg /= $n;
$zer /= $n;
printf("%.6f\n%.6f\n%.6f", $pos, $neg, $zer);
