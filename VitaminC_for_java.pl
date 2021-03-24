#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

while (1) {
	# system "cls";
	say "Please include the extension .java in the input";
	print "Java program to compile and run: ";
	chomp (my $filename = <STDIN>); 
	if ($filename eq "cls") {
		system "cls";
		next;
	}
	last if $filename eq "exit";
	
	say "";
	# compile
	`javac $filename`;
	
	say "";
	
	# run
	say "- - - - - ";
	$filename =~ s/.java$//;
	`java $filename`;
	say "- - - - - \n";

}



# besiyata d'shmaya


