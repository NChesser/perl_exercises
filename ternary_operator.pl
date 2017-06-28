#!/usr/bin/perl

#few examples of the ternary operator in perl

use strict;
use warnings;

my $x = rand();
my $y = rand();

my $smaller = $x < $y ? $x : $y;
print "$smaller\n";

sub get_value{
        return rand(15);
}

my $max = 10;
my $value = get_value();

$value = $value <= $max ? $value : $max;

print "$value\n";