#!/usr/bin/perl

use strict; use warnings;

my $fh=$ARGV[0];

open (my $x, $fh) or die("could not open file");

while (my $ln =<$x>){
    if ($ln=~m/^[=]/){
        print $ln;
    }
}