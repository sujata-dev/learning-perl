#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-binary-numbers
use strict;
use warnings;

my $num = <>;
chomp($num);
my ($count, $max) = (0, 0);
while($num > 0)
{
    my $rem = $num % 2;
    if($rem == 1)
    {
        $count++;
        if($count > $max)
        {
            $max = $count;
        }
    }
    else
    {
        $count = 0;
    }
    $num = $num / 2;
}
print $max;
