#!/usr/bin/perl
# https://www.hackerrank.com/challenges/grading/submissions/code/46250483
use strict;
use warnings;

chomp(my $n = <>);
while($n != 0)
{
    chomp(my $grade = <>);
    my $nextnum = 0;
    if($grade >= 38)
    {
        while($nextnum <= $grade)
        {
            $nextnum += 5;
        }
        if(($nextnum - $grade) < 3)
        {
            $grade = $nextnum;
        }
        print $grade;
    }
    else
    {
        print $grade;
    }
    $n--;
    print "\n";
}
