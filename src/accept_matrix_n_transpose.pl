#!/usr/bin/env perl
# To accept a 2D matrix from the user, and print its transpose
use strict;
use warnings;

my (@row, @matrix);
print "Enter row and column: ";
chomp(my $str = <>);
my ($row, $col) = (split(" ", $str));
print "Enter matrix:\n";
for(0..$row-1)
{
    chomp($str = <>);
    my @row = split(" ", $str);
    push @matrix, \@row;
}
print "\nTransposed Matrix\n";
for(0..$col-1)
{
    my $i=$_;
    for(0..$row-1)
    {
        my $j=$_;
        print $matrix[$j][$i]." ";
    }
    print "\n";
}
