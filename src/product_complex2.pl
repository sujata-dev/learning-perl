#!/usr/bin/perl
# Subroutine that takes 2 complex numbers as arguments, and returns the product
use strict;
use warnings;

sub product
{
    return $_[0] * $_[1]." + ".$_[2] * $_[3]."i";
}
print "Enter 2 complex number x and y (in terms of x + yi): ";
chomp(my $str = <>);
my ($x1,$y1,$x2,$y2) = split(" ", $str);
print product($x1, $y1, $x2, $y2);
