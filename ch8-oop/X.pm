use v5.10;

package X;

sub new {
    my ($class, $value) = @_;

    my $this = {
        value => $value,
    };
    bless $this, $class;

    return $this;
}

sub get_value {
    my ($this) = @_;

    return $this->{value};
}

sub set_value {
    my ($this, $value) = @_;

    $this->{value} = $value;
}

1;
