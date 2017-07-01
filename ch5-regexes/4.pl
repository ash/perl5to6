use v5.12;
my $cheese = 0;
my $wine   = 0;
my @orders = ('cheese and wine', 'salt and pepper', 'wine and water', 'spaghetti with cheese', 'only cheese');
for my $order (@orders) {
    $cheese++ if $order =~ /cheese/;
    $wine++   if $order =~ /wine/;
}
say "Cheese: $cheese"; # Cheese: 1
say "Wine: $wine";     # Wine: 1
