class Y {
    has @.values;
}

my $y = Y.new(values => (3, 5, 7));
say $y.values[1]; # 5

say $y.values.WHAT; # (Array)
say $y.values; # [3 5 7]
