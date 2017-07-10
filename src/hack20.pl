#!/usr/bin/perl
# https://www.hackerrank.com/challenges/kangaroo/submissions/code/46264859
use strict;
use warnings;

chomp(my $str = <>);
my ($x1, $v1, $x2, $v2) = split(" ", $str);
my $flag = 0;
if($x2 > $x1 && $v2 > $v1)
{
    $flag = 0;
}
else
{
    if($v1 != $v2 && ($x2 - $x1) % ($v1 - $v2) == 0)
    {
        $flag = 1;
    }
}
if($flag == 0)
{
    print "NO";
}
else
{
    print "YES";
}
