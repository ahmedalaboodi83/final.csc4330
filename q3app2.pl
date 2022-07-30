# Write a Perl program that uses a hash and a large number of 
# operations on the hash. For example, the hash could store 
# people's names and their ages. 
# A random-number generator could be used to create three-character names and ages, 
# which could be added to the hash. When a duplicate name was generated, 
# it would cause an access to the hash but not add a new element.


use strict;
use warnings;
use feature qw(say);
use Data::Dumper;


my %hash = ();
my $name = "";
my $age = "";
my $count = 0;
my $random = "";
my $random_age = "";
my $random_name = "";


while ($count < 10000) {
    $random = int(rand(1000));
    $random_age = int(rand(100));
    $random_name = int(rand(1000));
    $name = sprintf("%03d", $random_name);
    $age = sprintf("%02d", $random_age);
    $hash{$name} = $age;
    $count++;
}

print Dumper(\%hash);