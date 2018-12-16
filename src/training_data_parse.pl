#!/usr/bin/perl
# Parsing training_data into domain.yml format

use strict;
use warnings;


my (@intentlist, @entitylist, @actionlist);

# extracting intents
sub dedup {
    return keys %{{map { $_ => 1 } @_}};
}

open (my $training_data, '<', 'data/training_data.json')
    or die ("Could not open training_data.json\n");

open (my $domain, '>', 'domain1.yml')
    or die ("Could not open domain.yml\n");

while(<$training_data>) {
    push(@intentlist, $1) if($_ =~ /"intent":"([a-zA-Z-]+)/g);
}
@intentlist = dedup(@intentlist);
push(@intentlist, 'default');


#extracting entities
seek($training_data, 0, 0);
while(<$training_data>) {
    push(@entitylist, $1) if($_ =~ /"entity":"([a-zA-Z_-]+)/g);
}
@entitylist = dedup(@entitylist);
close $training_data;


#extracting actions
opendir (my $actiondir, 'actions') or die ("Could not open actions\n");
my @files = readdir $actiondir;
foreach my $file (@files) {
    if ($file =~ /^Action.*\.py$/) {
        $file = substr ($file, 0, -3);
        push (@actionlist, "actions.$file.$file");
    }
}
push(@actionlist, 'utter_greet');
push(@actionlist, 'utter_default');
closedir $actiondir;


#writing to the file
print $domain "slots:\n";
foreach my $entity (@entitylist) {
    print $domain "  $entity:\n";

    if ($entity ne 'matches') {
        print $domain "    type: text\n";
    }
    else {
        print $domain "    type: bool\n";
    }
}

print $domain "intents:\n";
print $domain "  - $_\n" foreach (@intentlist);

print $domain "entities:\n";
print $domain "  - $_\n" foreach (@entitylist);

print $domain "topics:\n";
print $domain "  - $_\n" foreach (@intentlist);

print $domain "actions:\n";
print $domain "  - $_\n" foreach (@actionlist);

