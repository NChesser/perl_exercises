#!/usr/bin/perl

#Finds all the primes up to a specified number

use warnings;
use strict;

my $cnt = 0;
my $prime = 0;

print "Enter number \n";
my $total = <STDIN>;

sub getPrimes{
	my $t = shift;

	if($t > 0){
		while($cnt <= $t){
			$cnt++;
			$prime = 1;
				for(my $i=2; $i<$cnt; $i++){
					if($cnt%$i == 0){
						$prime = 0;
					}
				}
			if($prime == 1){
				print $cnt;
				print "\n";
			}
		}		
	}else{
		print "Invalid input: Try again \n";
			my $try = <STDIN>;
				getPrimes($try);
	}
}

getPrimes($total);