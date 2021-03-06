#!/usr/bin/perl

# File name = breakcsv4.pl
# Date 21 Nov 2019
# code to break out a csv file into arrays per line
# and print an array no. to .txt file
# works without use strict and warnings
# Example use: perl breakcsv.pl {file} > result.txt

#use strict; 
#use warnings;
my $parameter;

    my $file = $ARGV[0] or die; 
    open(my $data, '<', $file) or die "Could not read from $file"; 
   
    while (my $line = <$data>) {
        chomp $line; 
  
        # Split the line and store it
        my @parameters = split (',', $line);  
  
        print "$parameters[0]\n";
    }
