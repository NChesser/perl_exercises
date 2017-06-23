#!/usr/bin/perl

#Coin Flipper by Nick Chesser

use warnings;
use strict;

print "Enter times to flip \n";
my $coins = <STDIN>;

my $h = 0;
my $t = 0;
my $r = 0;

for (my $i = 0; $i<$coins; $i++){
        $r = int(rand(2));
        if($r == 1){
                $t++;
        }else{
                $h++;
        }
}

print "Tails : $t \n";
print "Heads : $h \n";