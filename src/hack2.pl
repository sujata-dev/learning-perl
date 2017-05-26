#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-operators
use strict;
use warnings;

my $mealcost = <>;
my $tipPercent = <>;
my $taxPercent = <>;
my $tip = $mealcost * ($tipPercent / 100);
my $tax = $mealcost * ($taxPercent / 100);
printf("The total meal cost is %.0f dollars.\n", ($mealcost + $tip + $tax));
