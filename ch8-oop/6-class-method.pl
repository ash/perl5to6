class X {
    my $counter;
    sub count {
        return ++$counter; 
    }

    method n() {
        return count();
    }
}
my $x = X.new;
say $x.n;
say $x.n;

say X::count;
