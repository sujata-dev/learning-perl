#!/usr/bin/perl
# https://www.hackerrank.com/challenges/time-conversion/submissions/code/46219056
use strict;
use warnings;

chomp(my $str = <>);
my @arr = split(":", $str);
if($arr[2] =~ /PM$/ && $arr[0] != 12)
{
    $arr[0] += 12;
}
if($arr[2] =~ /AM$/ && $arr[0] == 12)
{
    $arr[0] = 0;
}
$arr[2] = substr($arr[2], 0, 2);
printf("%02d:%02d:%02d", $arr[0], $arr[1], $arr[2]) ;
