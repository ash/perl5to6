use v5.12;
my $cheese = 0;

$cheese++ if     'French cheese' =~ /cheese/;
$cheese++  unless 'French cheese' !~ /cheese/;
say $cheese;
