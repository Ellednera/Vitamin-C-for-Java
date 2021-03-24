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
	
	my @errors = system "javac $filename";
	
	# there's probably some errors
	if ($errors[0]) {
		say @errors, "\n"; # the last line is th error code of the program
		next;
	} 
	
	say "\n- - - - - ";
	$filename =~ s/.java$//;
	system "java $filename";
	say "- - - - - \n";

}



# besiyata d'shmaya


