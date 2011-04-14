#!/usr/bin/perl
print "Enter your name: ";
chomp($name = <>);
if ($name ~~ 'hien') {
	print "Name is 'hien'\n";
} else {
	print "Name is not 'hien'\n";
}
