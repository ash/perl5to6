my %hash = (
    'alpha' => 'α',
    'beta'  => 'β', 
    'gamma' => 'γ',
    'two words' => 'greek letters',
);
say %hash.perl;

say %hash{'beta'};

say %hash<beta>;

say %hash«beta»;

say %hash{'two words'};
say %hash<'two words'>;

say %hash<alpha beta>;
say %hash{'alpha', 'beta'};

my @letters = %hash<alpha beta gamma>;
say @letters;

my $keys = "alpha beta";
say %hash<$keys>;
say %hash{$keys};
