#!/usr/bin/perl
# Fibonacy 1-100k
$a = 0;
$b = 1;
while ( $a <100000) {
	print $a."\n";
	($a,$b) = ($b,$a+$b);
}

