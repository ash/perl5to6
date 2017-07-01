my $pattern = get();
say $pattern;

my $counter = 0;
while get() -> $str {
    if $str ~~ /$pattern/ {
        $counter++;
        say "$counter: $str";
    }
}
