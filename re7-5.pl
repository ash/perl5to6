my $str = <<STR;
Line 1
Line 2
Line 3
STR

print 'ok 1' if $str =~ /^Line 1/;
print 'ok 2' if $str =~ /3$/;
print 'ok 3' unless $str =~ /^Line 2/; # match failed; ok 3
print 'ok 4' unless $str =~ /2$/;      # match failed; ok 4

print 'ok 5' if $str =~ /^Line 2/m;
print 'ok 6' if $str =~ /2$/m;

print 'ok 7' if $str =~ /Line 1/m;
print 'ok 8' if $str =~ /2\Z/;
