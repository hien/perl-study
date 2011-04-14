#!/usr/bin/perl -w
#Author: Mr.Hien
#Date: Apr 8 2011
#Purpose: Checking IPv4 Address.

chomp($input =<>);
unless ($input =~ /^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])$/) {
	print "Oops! Invalid IPv4 Address!\n";
}
else {
	print "Cool! This is a valid IPv4 Address:  '$&'\n";
}
