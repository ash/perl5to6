use v5.12;
use warnings;

my $pattern = <>;
chomp $pattern;

say $pattern;
my $counter = 0;

while (my $str = <>) {
    chomp $str;
    if ($str =~ /$pattern/) {
        $counter++;
        say "$counter: $str";
    }
}

