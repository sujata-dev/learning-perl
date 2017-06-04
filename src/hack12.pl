#!/usr/bin/perl
# https://www.hackerrank.com/challenges/30-regex-patterns
use strict;
use warnings;

my $n = <>;
chomp($n);
my ($i, $j, $k) = (0, 0, 0);
my @nameid = ();
my @name = ();
while($n != 0)
{
    my $str = <>;
    chomp($str);
    ($nameid[$i], $nameid[$i + 1]) = split(" ", $str);
    $i = $i + 2;
    $n--;
}
for($j = 0; $j < $i; $j = $j + 2)
{
    if($nameid[$j + 1] =~ /^([a-z]|\.){1,20}\@gmail\.com$/
        && $nameid[$j] =~ /^[a-z]{1,}$/)
    {
        $name[$k] = $nameid[$j];
        $k++;
    }
}
@name = sort @name;
for($j = 0; $j <= $k; $j++)
{
    print $name[$j]."\n";
}
