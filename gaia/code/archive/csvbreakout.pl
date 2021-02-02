#!/usr/bin/perl

# File name = csvbreakout.pl
# Date 21 Nov 2019
# code to break out a csv file into an array
# works without use strict
# Example use: perl csvbasicbreakout.pl {file} . result.txt
#              perl code/csvbreakout.pl datafiles/gaiasource1first100.csv > gaiaresult.txt


#use strict; 
#use warnings;
  
my $file = $ARGV[0] or die; 
open(my $data, '<', $file) or die; 
  
while (my $line = <$data>)  
{ 
    chomp $line; 
  
    # Split the line of data types and store it 
    # inside the datatypes array
    my @words = split('!!', $line);  
  
    for (my $i = 0; $i <= 2; $i++) 
    { 
        print "$words[$i] "; 
    } 
    print "\n"; 
} 
