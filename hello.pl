#!/Usr/bin/perl
#Hello World
print "Hello World! Perl in Emacs! :-)\n";
print "And What's your name ?\n";
chomp($name=<>);
if ($name ne ""){
  print "Hello $name\n";
}else
{
  print "No name?\n";
}
