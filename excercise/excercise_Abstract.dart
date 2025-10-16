import 'dart:math';

void main() {
  final shapes = [
    Square(3),
    Circle(4),

  ];
  shapes.forEach((shape) => shape.printValues());
}

abstract class Shape {
  double get area;
  double get perimeteter;
  void printValues() {
    print('Area: $area, Perimeter: $perimeteter');
  }
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
  @override
  double get perimeteter => 2 * pi * radius;
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
  @override
  double get perimeteter => 4 * side;
}
