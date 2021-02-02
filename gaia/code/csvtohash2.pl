#!/usr/bin/perl

# File name = csvtohash2.pl
# Date 26 Nov 2019
# code to break gaiasource1.csv and read into a hash (20 seconds to run)
# and print test any values to .txt file 
# Example use: perl csvtohash.pl {file} > readhash.txt

use strict; 
use warnings;
my %gaia;
my $i; my $data; my $line = ();
my @key;
my @parameters;
use Data::Dumper;

my $file = "/Users/chrisbirrell/workspace/astro/gaia/datafiles/gaiasource1.csv";

open($data, '<', $file) or die "Could not read from $file"; 

    for (my $line = <$data>) {  # loop to capture astro parameters in line 1
        chomp $line; 
        my @parameters = split (',', $line); # Split line and store in array
#        print "Parameter list @parameters\n";  # print the Xth key value
    }

    for (my $line = <$data>) {   # read the first element solution ID 
        my @array = split (',', $line);
        my $solutionid = $array[0];
        print "Data solution ID is $solutionid \n";
    }


open($data, '<', $file) or die "Could not read from $file"; 

   for ($i=0; $i<3; $i++) { # The famous C-style for loop can be used

      my $line = <$data>;
        
        chomp $line;
        $line =~ s/\s*\z//; # remove trailing white characters
        my @array = split /,/, $line;

        shift @array;
        my $key = shift @array;
        $gaia{$key} = \@array;

        #print @gaia{65408};

         #print Dumper (\%gaia); # print the entire hash
        # print keys %gaia; # prints all the keys in every line

}

    my $gaiaresult = $gaia{'65408'};
    print $gaiaresult;
#   print Dumper (\%gaia); # print the entire hash
