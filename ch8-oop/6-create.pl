class X {
    has $.value;
}

my $x = X.new(value => 42);
say $x.WHAT;

say $x.value;
#$x.value = 43;
say $x.value;
