#!/usr/bin/perl
print "Enter A value: ";
chomp($a = <>);
print "\nEnter B value: ";
chomp($b = <>);
$is_bigger = $a > $b ;
if (!$is_bigger) {
	print "A is smaller than B!\n";
}
