#!/usr/bin/perl

use strict; use warnings;

my $fh=$ARGV[0];

# Read the .bib from standard input.  

open (my $x, $fh) or die("could not open file");

my $out_fl="";

if (scalar(@ARGV)==2){
    $out_fl=$ARGV[1];
} else{
    $out_fl="$fh";
    $out_fl=~s/.bib/\_out.bib/;
}

open (my $y,">",$out_fl) or die("could not open file $out_fl!");

while (my $ln =<$x>){
    #read through file to determine 
    if ($ln=~m/title[=]\{[^\{]/){
        $ln=~s/\{/\{\{/;
        $ln=~s/\}/\}\}/ if $ln=~m/[^\}]\},/;
    }
    print $y $ln;
}