#!/usr/bin/perl

use strict;
use warnings;

use Scalar::Util qw(looks_like_number);

print "Enter your number \n";

my $num = <STDIN>;
my $cnt = 0;

if(looks_like_number($num)){
    while($num > 1){
            if($num%2 == 0){
                    $num = $num/2;
            }else{
                    $num = $num*3+1;
            }
            $cnt++;
    }
    print "Number of steps = $cnt \n";
}else{
    print "No number entered \n";
}