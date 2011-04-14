#!/usr/bin/perl

@arrcmd = `ls -lah`;
	foreach (@arrcmd) {
		print "$_";
}
print "Last element is: $#arrcmd\n";

