use v5.10;

package Point;

sub new {
    my ($class, $x, $y) = @_;

    my $this = {
        x => $x,
        y => $y,
    };
    bless $this, $class;

    return $this;
}

sub coordinates {
    my ($this) = @_;

    return "($this->{x}, $this->{y})";
}


package Shape;

sub new {
    my ($class, $point) = @_;

    my $this => {
        point => $point,        
    };
    bless $this, $class;

    return $this;
}

sub area {
    return 0;
}

sub description {
    my ($this) = @_;
    
    return $this->name() . 
           ' at ' . $this->{point}->coordinates() . 
           '; its area is ' . $this->area();
}


package Square;
use parent Shape;

sub new {
    my ($class) = @_;

    my $this = {
        side => 0,
    };
    bless $this, $class;

    return $this;
}

sub area {
    my ($this) = @_;

    return $this->{side} * $this->{side};
}

sub name {
    my ($this) = @_;

    return "Square with the side $this->{side}";
}

package Rectangle;
use parent Shape;

sub new {
    my ($class) = @_;

    my $this = {
        width => 0,
        height => 0,
    };
    bless $this, $class;

    return $this;
}

sub area {
    my ($this) = @_;

    return $this->{width} * $this->{height};
}

sub name {
    my ($this) = @_;

    return "Rectangle $this->{width} x $this->{height}";
}


package Circle;
use parent Shape;

sub new {
    my ($this) = 
}
    has $.radius;

    method area {
        return 2 * pi * $!radius ** 2;
    }

    method name {
        return "Circle with the radius $!radius";
    }
}

my Shape @shapes;

push @shapes, Square.new(
    point => Point.new(x => 1, y => 2),
    side => 3,
);

push @shapes, Square.new(
    point => Point.new(x => 2, y => 1),
    side => 4,
);

push @shapes, Rectangle.new(
    point => Point.new(x => 5, y => 6),
    width => 4,
    height => 7,
);

push @shapes, Circle.new(
    point => Point.new(x => 0, y => 3),
    radius => 5,
);

say $_.description for @shapes;
