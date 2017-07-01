class A {
}
class B {
}
class C is A is B {
}

my $c = C.new();
say $c.^mro;
