#!/usr/bin/env perl

##############################
#    Author: Sujata Dev <sujata.dev@mindstix.com>
#    Date created: 11 February 2018
#    Perl Version: 5.22
##############################

# Extracts sections that mention “RSA” (case insensitive) from
# ConversationLogs/ directory.

use strict;
use warnings;

sub dedup { return keys %{{map { $_ => 1 } @_}} }

open (my $y, '>', 'RSAlogs.txt')
    or die ('Could not open RSAlogs.txt');
opendir (my $convodir, 'ConversationLogs')
    or die ('Could not open ConversationLogs directory');
my @files = readdir ($convodir);

$/ = undef;
my @list;
foreach my $file (@files) {
    if ($file =~ /log/) {
        open (my $logfile, '<', "ConversationLogs/$file")
            or die ("Couldn't open ConversationLogs/$file");
        my @arr = split (/^={6,}$/m, <$logfile>);

        foreach (@arr) {
            push (@list, $_) if (/\bRSA\b/i);
        }
    }
}

foreach (dedup(@list)) {
    print $y ("$_");
    print $y ('=' x 80);
}
