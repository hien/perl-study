#!/usr/bin/perl
 use warnings;
 use strict;
 use Net::SSH2;
 
 my $ssh2 = Net::SSH2->new();
 
$ssh2->connect('testhost.here.local') or die "Unable to connect Host $@ \n";
$ssh2->auth_password('typeuserhere','passwordhere') or die "Unable to login $@ \n";

my $chan=$ssh2->channel();
   $chan->shell();
   print $chan "uname -a\n";
   print "LINE : $_" while <$chan>;
   print $chan "who\n";
   print "LINE : $_" while <$chan>;
   $chan->close;
