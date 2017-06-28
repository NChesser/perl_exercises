#!/usr/bin/perl

#Some hash stuff

use strict;
use warnings;

my %colour_of = (
        apple => "red",
        orange => "orange",
        grape => "purple",
);

for my $fruit (keys %colour_of){
        print "The colour of $fruit is $colour_of{$fruit}\n";
}