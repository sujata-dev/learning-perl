#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-conditional-statements
use strict;
use warnings;

my $n=<>;
if($n % 2!=0)
{
    print("Weird");
}
else
{
    if($n>=2 && $n<=5)
    {
        print("Not Weird");
    }
    elsif($n>=6 && $n<=20)
    {
        print("Weird");
    }
    else
    {
        print("Not Weird");
    }
}
