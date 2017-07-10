#!/usr/bin/perl
# https://www.hackerrank.com/challenges/the-birthday-bar/submissions/code/46350152
use strict;
use warnings;

chomp(my $n = <>);
chomp(my $str = <>);
my @arr = split(" ", $str);
chomp($str = <>);
my ($d, $m) = split(" ", $str);
my $count = 0;
for(my $i = 0; $i < $n; $i++)
{
    my $j = $i;
    my $num = $m;
    my $sum = 0;
    while($num != 0)
    {
        $sum += $arr[$j];
        $j++;
        $num--;
    }
    if($sum == $d)
    {
        $count++;
    }
}
print $count;
