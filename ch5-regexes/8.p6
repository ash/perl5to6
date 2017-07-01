my $cheese = 0;
my $wine   = 0;

my @orders = ('cheese and wine', 'salt and pepper', 'wine and water', 'spaghetti with cheese', 'only cheese');
for @orders -> $order {
    $cheese++ if $order ~~ /cheese/;
    $wine++   if $order ~~ /wine/;
}
say "Cheese: $cheese"; # Cheese: 3
say "Wine: $wine";     # Wine: 2
