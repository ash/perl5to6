class X {
    method !info() {
        say 'Hey, I am a private method';
    }
    
    method meth() {
        self!info();
    }
}

my $x = X.new();
$x.meth();

$x!info();
