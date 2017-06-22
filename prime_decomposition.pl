#!/usr/bin/perl

#prime decomposition
#The prime decomposition of a number is defined as a list of
#prime numbers which when all multiplied together,
#are equal to that number

use strict;
use warnings;

sub prime_factors{
    
    my($n, $p, @out) = (shift, 3);
    
    return if $n < 1;
    
    while (!($n&1)) {
        $n >>=1; push @out, 2; 
    }
    while ($n > 1 && $p*$p <= $n){
        while (($n % $p) == 0){
            $n /= $p;
            push @out, $p;
        }
        $p += 2;
     
    }

    push @out, $n if $n > 1;
    @out;

}