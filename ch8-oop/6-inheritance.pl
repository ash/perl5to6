class B {
    method !parent_method() {
        say 'Parent method';
    }
}

class D is B {
    method child_method() {
        say 'Child method';
    }
}

my $d = D.new();
$d.child_method();  # Child method
$d.parent_method(); # Parent method
