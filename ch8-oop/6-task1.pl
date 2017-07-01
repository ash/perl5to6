class Point {
    has $.x;
    has $.y;

    method coordinates {
        return "($!x, $!y)";
    }
}

class Shape {
    has Point $.point;

    method area {
        return 0;
    }

    method description {
        return self.name() ~ 
               ' at ' ~ $.point.coordinates() ~ 
               '; its area is ' ~ self.area().fmt('%0.2f');
    }
}

class Square is Shape {
    has $.side;

    method area {
        return $!side ** 2;
    }

    method name {
        return "Square with the side $!side";
    }
}

class Rectangle is Shape {
    has $.width;
    has $.height;

    method area {
        return $!width * $!height;
    }

    method name {
        return "Rectangle $!width x $!height";
    }
}

class Circle is Shape {
    has $.radius;

    method area {
        return pi * $!radius ** 2;
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
    radius => 4,
);

say $_.description for @shapes;
