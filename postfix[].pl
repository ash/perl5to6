sub postcircumfix:<[ ]> ($value, $index) {
    return $value * $index;
}

my $x = 100;
say $x[2];
