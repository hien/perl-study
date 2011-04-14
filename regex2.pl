#!/usr/bin/perl -w
#Author: Mr.Hien
#Date: Feb 7 2011
#Purpose: using regex basic, word anchors: \b "match whole words only,actually matched varible.

chomp($input =<>);
unless ($input =~ /\bhien\b/i) {
	print "Oops! Not Match!\n";
}
else {
	print "Match!In fact, it matched '$&'\n";
}
