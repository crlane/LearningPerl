#!/usr/bin/perl -w
use strict;
use 5.010;

my $what = 'fred|barney';

while (<>) {                   # take one input line at a time
	chomp;
	if (/(?:$what){3}/) {
		print "matched: |$`<$&>$'|\n";  # the special match vars
	} else {
		print "no match: |$_|\n";
	}
}
