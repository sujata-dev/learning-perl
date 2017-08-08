#!/usr/bin/perl
# To accept a 2D matrix from the user, and print its transpose
use strict;
use warnings;

my (@row, @matrix);
print "Enter row and column: ";
chomp(my $str = <>);
my ($row, $col) = (split(" ", $str));
print "Enter matrix:\n";
for(my $i = 0; $i < $row; $i++)
{
    chomp($str = <>);
    my @row = split(" ", $str);
    push @matrix, \@row;
}
print "\nTransposed Matrix\n";
for(my $i = 0; $i < $col; $i++)
{
    for(my $j = 0; $j < $row; $j++)
    {
        print $matrix[$j][$i]." ";
    }
    print "\n";
}
