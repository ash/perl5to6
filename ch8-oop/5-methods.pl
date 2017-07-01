use v5.10;

use X;

my $x = X->new();
$x->set_value(43);
say $x->get_value();

say X::get_value($x);
