class Point {
    has $.x;
    has $.y;
}

class Shape {
    has Point $.point;
}

class Square is Shape {
    has $.side;
}

class Rectangle is Shape {
    has $.width;
    has $.height;
}

class Circle is Shape {
    has $.radius;
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

say @shapes;
