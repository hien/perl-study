#!/usr/bin/perl -w
print "Host: ";
chomp($host = <>);
print "pinging $host\n";
!system "ping","-c3 ","$host" or die " Error system";


