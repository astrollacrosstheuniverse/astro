#!/usr/bin/perl

# File name = breakcsv.pl
# Date 21 Nov 2019
# code to break out a csv file into arrays and print to .txt file
# works without use strict and warnings
# Example use: perl breakcsv.pl {file} > result.txt

#use strict; 
#use warnings;

my $file = $ARGV[0] or die; 
open(my $data, '<', $file) or die; 
  
while (my $line = <$data>) {
    chomp $line; 
  
    # Split the line and store it 
    # inside the words array 
    my @parameters = split /,/, $line;  
  
    for (my $i = 0; $i < 5; $i++) 
    { 
        print "$parameters[$i] "; 
    } 
    print "\n"; 
} 
