#!/usr/bin/perl

use warnings;
use strict;

# defines country => language hash

my %langs = ( England => 'English',
              France => 'French', 
              Spain => 'Spanish', 
              China => 'Chinese', 
              Germany => 'German');

# get language of England
my $lang = $langs{'England'}; # English

print($lang,"\n");

$langs{'Italy'} = 'Italian';

delete $langs{'China'};

# add new key value pair
$langs{'India'} = 'Many languages';
# modify official language of India
$langs{'India'} = 'Hindi'; 


