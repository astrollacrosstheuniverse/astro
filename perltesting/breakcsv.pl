#!/usr/bin/perl

# File name = breakcsv.pl
# Date 21 Nov 2019
# code to break out a csv file into an array
# works without use strict
# Example use: perl breakcsv.pl {file} > result.txt

#use strict; 
#use warnings;
  
my $file = $ARGV[0] or die; 
open(my $data, '<', $file) or die; 
  
while (my $line = <$data>)  
{ 
    chomp $line; 
  
    # Split the line and store it 
    # inside the words array 
    my @words = split('!!', $line);  
  
    for (my $i = 0; $i <= 2; $i++) 
    { 
        print "$words[$i] "; 
    } 
    print "\n"; 
} 
