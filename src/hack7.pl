#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-dictionaries-and-maps
use strict;
use warnings;

my $n = <>;
my %hash;
for (my $i = 0; $i < $n; $i++)
{
    my $str = <>;
    my ($key, $val) = split("  ", $str);
    $hash{$key} = $val;
}
while (my $enter = <>)
{
    chomp($enter);
    if (exists($hash{$enter}))
    {
        print($enter."=".$hash{$enter}."\n");
    }
    else
    {
        print("Not found\n");
    }
}
