#!/usr/bin/env perl
# To count the number of words in a user-entered paragraph
use strict;
use warnings;

chomp(my $para = <>);
my $count = 0;
for(split("", $para))
{
    if($_ eq " ")
    {
        $count++;
    }
}
print $count+1;
