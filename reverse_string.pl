#!/usr/bin/perl 
#String reverser by Nick Chesser

use warnings;
use strict;

print "Enter string to reverse \n";
my $s = <STDIN>;
chomp($s);
$s = lc $s;

sub back{
        my $r = shift;
        my $rev ="";
        my @chars = split("",$r);

        for (my $i=@chars; $i>=0; $i--){
                $rev .= $chars[$i];
        }
        return $rev;
}

print "$s Backwards is ", back($s), "\n";

sub palindrome{
        my $p = back($s);

        if($p eq $s){
                print "$s is a Palindrome \n";
        }else{
                print "$s is Not a Palindrome \n";
        }
}

palindrome;