use v5.10;

package B;

sub new {
    my ($class) = @_;

    my $this = {};
    bless $this, $class;

    return $this;
}

sub parent_method {
    say 'Parent method';
}


package D;
use parent B;

sub child_method {
    say 'Child method';
}


package main;

my $d = D->new();
$d->child_method();
$d->parent_method();
