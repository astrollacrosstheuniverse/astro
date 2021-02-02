#!/usr/bin/perl

# File name = csvtohash3.pl
# Date 29 Mar 2020
# code to break gaiasource1.csv and read into a hash (20 seconds to run)
# and print test any values to .txt file 
# Example use: perl csvtohash3.pl {file} > readhash.txt

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

# names of array items in each line of csv   ( solution_id	source_id	random_index	ref_epoch	ra	ra_error	dec	dec_error	parallax	parallax_error	pmra	pmra_error	pmdec	pmdec_error	ra_dec_corr	ra_parallax_corr	ra_pmra_corr	ra_pmdec_corr	dec_parallax_corr	dec_pmra_corr	dec_pmdec_corr	parallax_pmra_corr	parallax_pmdec_corr	pmra_pmdec_corr	astrometric_n_obs_al	astrometric_n_obs_ac	astrometric_n_good_obs_al	astrometric_n_good_obs_ac	astrometric_n_bad_obs_al	astrometric_n_bad_obs_ac	astrometric_delta_q	astrometric_excess_noise	astrometric_excess_noise_sig	astrometric_primary_flag	astrometric_relegation_factor	astrometric_weight_al	astrometric_weight_ac	astrometric_priors_used	matched_observations	duplicated_source	scan_direction_strength_k1	scan_direction_strength_k2	scan_direction_strength_k3	scan_direction_strength_k4	scan_direction_mean_k1	scan_direction_mean_k2	scan_direction_mean_k3	scan_direction_mean_k4	phot_g_n_obs	phot_g_mean_flux	phot_g_mean_flux_error	phot_g_mean_mag	phot_variable_flag	l	b	ecl_lon	ecl_lat )
