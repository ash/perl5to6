class X {
    has $.value;

    method get_value() {
        return $!value;
    }

    method set_value($value) {
        $!value = $value;
    }
}

my $x = X.new();
$x.set_value(43);
say $x.get_value(); # 43

