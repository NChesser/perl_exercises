#!/usr/bin/perl
#

use strict;
use warnings;

my @alphLow = ('a'..'z');
my @alphUp = ('A'..'Z');

my $string = "Secret Password";

sub letterShift{
        my ($char, $key, @array) = (@_);

        for (my $i=0; $i<@array; $i++){
                if($array[$i] eq $char){        
                        #return $array[$i+$key];\
                        return $array[($i+$key)%@array];
                }
        }
}

sub encrypt{
        my ($value, $key) = (@_);

        foreach my $char(split //, $value){
		        my $replace = "D";
                if($char eq uc $char){
                        $replace = letterShift($char, $key, @alphUp);
                }elsif($char eq lc $char){
                        $replace = letterShift($char, $key, @alphLow);
                }
                $value =~ s/$char/$replace/;
        }
        return $value;
}

my $rand = int(rand(25));

print encrypt($string, $rand);
print "\n";