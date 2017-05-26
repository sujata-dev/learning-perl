#!/usr/bin/perl
# Implementing subroutines
use strict;
use warnings;

my $i;
sub av
{
    my $n = @_;
    my $sum = 0;
    foreach $i (@_)
    {
        $sum += $i;
    }
    return "Average: ".$sum / $n;
}
print av (10, 30, 50);
