# /usr/bin/perl
#
# This code will breakout the elements of the csv gaia data file
# into consituent parts for further analysis

use strict;
use warnings;
 
my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";
 
my $sum = 0;
open(my $data, '<', $file) or die "Could not open '$file' $!\n";
 
while (my $line = <$data>) {
  chomp $line;
 
  my @fields = split "," , $line;
  $sum += $fields[20];
}
print "$sum\n
