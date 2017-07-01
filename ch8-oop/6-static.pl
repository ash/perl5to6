class X {
    our $.count;
}

X.count = 10;
say X.count; # 10

my $x = X.new;
say $x.count; # 10
$x.count++;
say $x.count; # 11

my $y = X.new;
say $y.count; # 11

