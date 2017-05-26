#!/usr/bin/perl
use strict;
use warnings;

my $num = 10;
my $name = "tom";
my $surname = " Blake";
my $fullname = $name.$surname;
my $line =<< "end of letter";
\nHello \u$fullname,
    This is Mr. \"X\", from Apartment $num.
    Meet me \Uasap.\E
Thanks.
end of letter
print($line);

$line =<< 'end of letter';
\nHello \u$fullname,
    This is Mr. \"X\", from Apartment $num.
    Meet me \Uasap.\E
Thanks.
end of letter
print("\n$line");
