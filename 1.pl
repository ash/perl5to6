my $str = <<STR;
Line 1
Line 2
Line 3
STR

print 'ok 1' if $str =~ /^Line 1/;
print 'ok 2' if $str =~ /3$/;

print 'ok 3' if $str =~ /^Line 2/;
print 'ok 4' if $str =~ /2$/;

print 'ok 5' if $str =~ /^Line 2/m;
print 'ok 6' if $str =~ /2$/m;
