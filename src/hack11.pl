#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-nested-logic
use strict;
use warnings;

my $adate = <>;
chomp($adate);
my $exdate = <>;
chomp($exdate);
my ($ad, $am, $ay) = split(' ', $adate);
my ($ed, $em, $ey) = split(' ', $exdate);
my $fine;
if($ay > $ey)
{
    $fine = 10000;
}
elsif($ay == $ey)
{
    if($am > $em)
    {
        $fine = 500 * ($am - $em);
    }
    elsif($am == $em)
    {
        if($ad > $ed)
        {
            $fine = 15 * ($ad - $ed);
        }
        else
        {
            $fine = 0;
        }
    }
    else
    {
        $fine = 0;
    }
}
else
{
    $fine = 0;
}
print $fine;
