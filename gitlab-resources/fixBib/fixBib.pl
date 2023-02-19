#!/usr/bin/perl

use strict; use warnings;

# ----------------------------
# written by Ian Kirby.  send any errors to ian@ilkirby.com 
# 2023-02-18 
# ----------------------------


# Read the .bib from standard input.  
my $fh=$ARGV[0];
open (my $x, $fh) or die("Could not open file $fh"); 

# name for the output file
my $out_fl="";
# 
if (scalar(@ARGV)==2){
    $out_fl=$ARGV[1];
}
else{$out_fl="$fh"; $out_fl=~s/.bib/\_out.bib/; # if no name for output provided, 
}

# print $out_fl;

open (my $y,">",$out_fl) or die("Could not open file $out_fl");


while (my $ln =<$x>){
    # read through file to determine 
    if ($ln=~m/title[=]\{[^\{]/){
        $ln=~s/\{/\{\{/;
        $ln=~s/\}/\}\}/;# if $ln=~m/[^\}]\},/;
    }
    print $y $ln;
}

