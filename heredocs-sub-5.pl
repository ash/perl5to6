sub f {
    my $name = shift;

    print <<DOC;
Dear $name,

Happy New Year!
DOC
}

f('Clara');
