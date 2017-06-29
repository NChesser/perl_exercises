#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

use Scalar::Util qw(looks_like_number);

print "The number is between 0 - 100 \n";

my $rand = int(rand(100));
my $cnt = 0;
my $true = 1;
my $highscores = "highscores.txt";

sub printHighScores{

        my $n = shift;

        my @high = ();
        open(my $fh, '<', $highscores) or die "Could not open file '$highscores' $!";

        while (my $row = <$fh>){
                chomp $row;
                push @high, $row;
        }
		
		my @apple = sort {($a =~ /(\d+)/g)[0] <=> ($b =~ /(\d+)/g)[0] } @high;
        chomp($n);

        my ($index) = grep { $apple[$_] eq $n } (0 .. @apple-1);

        print "You have the ";
        print defined $index ? $index : -1;
        print " Highest score!\n\n";

        print "Top 10 Highscores \n";

        for (my $i=0; $i<10; $i++){
                print $apple[$i];
                print "\n";
        }
        print "/n";
        close $fh;
}

sub highscore{
        my $val = shift;
		
		print "Enter Name \n";
        my $name = <STDIN>;
        chomp($name);
        $name .= ", ";
        $name .= $val;
        $name .= "\n";

        open(my $fh, '>>', $highscores) or die "Could not open file '$highscores' $!";
        print $fh $name;
        close $fh;

        printHighScores($name);
}

while($true != 0){
        my $num = <STDIN>;

        if(looks_like_number($num)){
                $cnt++;
			if($num == $rand){
                print "Correct! It took you $cnt guesses\n";
                $true = 0;
                highscore($cnt);
			}elsif($num < $rand){
                print "Higher\n";
			}elsif($num > $rand){
                print "Lower\n";
			}else{
                print "Please enter a number";
			}
		}else{
			print "Not a Number\n";
			print "Please enter a number\n";
		}
}
