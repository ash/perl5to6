my %hash = (
    'alpha' => 'α',
    'beta'  => 'β', 
    '$key'  => 'dollar key'
);
my $keys = 'alpha beta';
say %hash<<$keys>>;
say %hash«$keys»;
say %hash<$key>;
