#!/usr/bin/perl
# https://www.hackerrank.com/challenges/apple-and-orange/submissions/code/46258841
use strict;
use warnings;

chomp(my $str = <>);
my ($s, $t) = split(" ", $str);
chomp($str = <>);
my ($a, $b) = split(" ", $str);
chomp($str = <>);
my ($m, $n) = split(" ", $str);
chomp($str = <>);
my @apple = split(" ",$str);
chomp($str = <>);
my $num;
my ($count1, $count2) = (0, 0);
my @orange = split(" ", $str);
for(my $i = 0; $i < $m; $i++)
{
    $num = $a + $apple[$i];
    if($num >= $s && $num <= $t)
    {
        $count1++;
    }
}
for(my $i = 0; $i < $n; $i++)
{
    $num = $b + $orange[$i];
    if($num >= $s && $num <= $t)
    {
        $count2++;
    }
}
print $count1."\n".$count2;
