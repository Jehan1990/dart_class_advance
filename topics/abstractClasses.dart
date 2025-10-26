///Abstract Classes -- are classes that cannot be instantiated.
///We can use abstract classes to define an interface that can be implemented
///by subclasses
///Decouples code that uses an interface from its implementation
///printArea() function doesn't need to know that square and circle exit
///In this way we are using DEPENDENCY INVERSION PRINCIPLE
///Which means code with abstractions,to be independent from its specific implementation.
///In coding its a good idea to code against abstract interface vs concrete implementation.


import 'dart:math';

abstract class Shape {
  double get area;
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

//Fuction to print area of a shape
void printArea(Shape shape) {
  print(shape.area);
}
/*printArea needs argument of type Shape. Since Square and Circle
are subclasses of shape we can use them. 
*/

void main() {
  /*You can always assign an instance of a subclass to a variable
  of the parent class */
  final Shape square = Square(10);
  printArea(square);

  final Shape circle = Circle(5);
  printArea(circle);

  final shapes = [Square(2), Circle(3)];
  shapes.forEach((shape) => printArea(shape));
  //Different way to write it
  shapes.forEach(printArea);
}
