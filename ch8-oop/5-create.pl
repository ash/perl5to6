use v5.10;

use X;

my $x = X->new(42);
say $x; # X=HASH(0x7fb29e002250)
say $x->{value};

$x->{value} = 43;
say $x->{value};
