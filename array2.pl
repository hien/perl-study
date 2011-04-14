#!/usr/bin/perl
while (($myInput=<>) ne "\n") {
$myArray[$i] = $myInput;
$i++;
}
print "Time(s) of enter a string :".($#myArray+1)."\n";
print "List strings: \n";
foreach (@myArray) {
print $_;
}
