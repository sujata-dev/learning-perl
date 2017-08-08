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
    for(my $i = 0; $i < $len/2; $i++)
    {
        $rprod *= $real[$i];
    }
    for(my $j = 0; $j < $len/2; $j++)
    {
        $iprod *= $imag[$j];
    }
    return $rprod." + ".$iprod."i";
}
my $i = 1;
my (@arr, @real, @imag, @realimag);
while($i <= 3)
{
    print "Enter $i complex number x and y (in terms of x + yi): ";
    chomp(my $str = <>);
    my($x, $y) = split(" ", $str);
    push(@realimag, $x);
    push(@realimag, $y);
    $i++;
}
my $len = @realimag;
for(my $j = 0; $j < $len; $j = $j + 2)
{
    push(@real, $realimag[$j]);
}
for(my $j = 1; $j < $len; $j = $j + 2)
{
    push(@imag, $realimag[$j]);
}
print product(\@real, \@imag, $len);
