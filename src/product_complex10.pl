#!/usr/bin/perl
# To accept and store ten complex numbers from the user and find their product
use strict;
use warnings;

sub product
{
    my @real = @{$_[0]};
    my @imag = @{$_[1]};
    my $len = $_[2];
    my ($rprod, $iprod) = (1, 1);
    for(0 .. (($len / 2) - 1))
    {
        $rprod *= $real[$_];
    }
    for(0 .. (($len / 2) - 1))
    {
        $iprod *= $imag[$_];
    }
    return $rprod." + ".$iprod."i";
}
my (@arr, @real, @imag, @realimag);
for(1..10)
{
    print "Enter $_ complex number x and y (in terms of x + yi): ";
    chomp(my $str = <>);
    my($x, $y) = split(" ", $str);
    push(@realimag, $x);
    push(@realimag, $y);
}
my $len = @realimag;
for(0..$len-1)
{
    next if($_ % 2 != 0);
    push(@real, $realimag[$_]);
}
for(1..$len-1)
{
    next if($_ % 2 == 0);
    push(@imag, $realimag[$_]);
}
print product(\@real, \@imag, $len);
