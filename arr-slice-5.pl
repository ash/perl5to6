use Data::Dumper;

my @a = qw(a b c d e f);
my @b = @a[2, 3, 5];
print Dumper(\@b);
