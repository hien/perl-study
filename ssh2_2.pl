#!/usr/bin/perl
use warnings;
use strict;
use Net::SSH2;

my $ssh2 = Net::SSH2->new();

$ssh2->connect('host.test.local') or die "Unable to connect Host $@ \n";
#$ssh2->auth_password('hien','123123') or die "Unable to login $@ \n";
$ssh2->auth_publickey('usernamehere','/path/to/public/key','/path/to/pem/file','') or die "Unable to login $@ \n";

#works 
my $sftp = $ssh2->sftp(); 
#my $fh = $sftp->open('/etc/passwd') or die; 
#print $_ while <$fh>; 
#$ssh2->scp_put('/home/hien/.ssh/id_rsa.pub','/home/hien/.ssh/authorized_keys');
#sftp->unlink('test.pl');
# A channel object is created by the Net::SSH2 "channel" method.   
# As well as being an object, it is also a tied filehandle. 

my $chan = $ssh2->channel();
#$chan->exec('ps axuf > ps.txt');
$chan->pty(''); ##request terminal tu run sudo 
$chan->shell();
print $chan "id\n";
while (<$chan>){ print };
print $chan "/sbin/ifconfig\n";
while (<$chan>){ print };
print $chan "sudo -i\n";
while (<$chan>){ print };
print $chan "cd /tmp/nginx/blog && ls -lah \n";
while (<$chan>){ print };
print "\n";
#print $chan "shutdown -h now\n";
#while (<$chan>){ print };
#print $chan "ps ax > ps.txt\n";
#$ssh2->scp_get('ps.txt','ps.debian');
#print $chan "rm -fr ps.txt\n";
#$chan->exec('id');
##while (<$chan>){ print }
