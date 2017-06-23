#!/usr/bin/perl
#

use warnings;
use strict;

my $filename = "test.txt";

open(my $fh, '<', $filename) or die "Can't open $filename: $!";

my $cnt = 0;
while (my $line = <$fh>){
        chomp $line;
        foreach my $str (split " ", $line){
                $cnt++;
}
}
close $fh;
print $filename, " Has ", $cnt, " Words \n";
