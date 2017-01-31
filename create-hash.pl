#use v5.10;
use feature 'say';

my %hash = (alpha => 'α', beta => 'β', gamma => 'γ');

say $hash{beta};
say $hash{'beta'};
