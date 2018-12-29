#!/usr/bin/env perl
# find the longest common prefix among all strings present in the array
use strict;
use warnings;


sub common_prefix
{
    my $n = $_[0];
    my @arr = @{$_[1]};
    my ($subs, $i) = ($arr[0], 0);

    while($i < @arr)
    {
        return -1 if(length($subs) < 1);
        if(!($arr[$i] =~ /$subs/))
        {
            $subs = substr($subs, 0, -1);
            $i = -1;
        }
        $i++;
    }
    return $subs;
}


chomp(my $n = <>);
chomp(my $str = <>);
my @arr = sort{length($a) <=> length($b)} split(/\s+/, $str);

print(common_prefix($n, \@arr));
