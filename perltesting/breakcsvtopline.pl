#!/usr/bin/perl

# File name = breakcsvtopline.pl
# Date 23 Nov 2019
# code to break gaiasource.csv a csv file top line into an arrays
# and print all named parameters to .txt file 
# Example use: perl breakcsvtopline.pl {file} > result.txt

use strict; 
use warnings;
my $i;

    my $file = $ARGV[0] or die; 
    open(my $data, '<', $file) or die "Could not read from $file"; 
   
    for (my $line = <$data>) {
        chomp $line; 
  
        # Split the line and store it
        my @parameters = split (',', $line);
        
        foreach $i (@parameters) { 
            print "$i\n";    
        }
    }
