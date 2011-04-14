#~/usr/bin/perl
#Author: Mr.Hien
#Desc: Subroutine reture values, find max number from array!

$maximum = &max(7,54,9,3,0,5,6);
print "Maximum Number is $maximum \n";
sub max {
	my($max_tmp) = shift @_;
	foreach (@_) {
		if ($_ > $max_tmp) {
			$max_tmp = $_;
		}
	}
	$max_tmp;
}
