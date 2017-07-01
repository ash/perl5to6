my $str = 'This is something';
print 'ok' if $str =~ /
    is
    \s # space
    is
/x;
