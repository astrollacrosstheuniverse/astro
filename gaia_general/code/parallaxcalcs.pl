#!/usr/bin/perl

# File name = parallaxcalcs.pl
# Date 26 Nov 2019
# code to break gaiasource1.csv and write any objects with a parallax value
# to NEOs.txt file 
# Example use: perl parallaxcalcs.pl > NEOs.txt

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


#   for ($i=0; $i<10000; $i++) { # The famous C-style for loop can be used

     while (my $line = <$data>) {
        
        chomp $line;
        $line =~ s/\s*\z//; # remove trailing white characters
        my @array = split /,/, $line;
 
        # Distance calculation to object
        if ( $array[8] ne "" ) {
            #print $array[8]; 
            my $DistanceMeters = (1 / $array[7] ) * 30856778200000000;
            my $DistanceAU = (1 / $array[7] ) * ( 30856778200000000 / 149597870691 );
            print "Distance to $array[1] is $DistanceAU AU \n";
                     # 30856778200000000 parsecs in meters
                     # 149597870691 one Astronomical Unit
        }
        else { #print "Object is far away!\n"
        }
     }
