#!/usr/bin/env perl
# To remove duplicate characters from a user-entered string
use strict;
use warnings;

chomp(my $str = <>);
my (%rep, $newstr);
for(split("", $str))
{
    if(exists($rep{$_}))
    {
        next;
    }
    $rep{$_}++;
    $newstr = $newstr . "$_";
}
print $newstr;
