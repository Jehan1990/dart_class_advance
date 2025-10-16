///Abstarct class is used to define abstarct methods
///so that methods can be used in a generic way with uther
///subclasses

void main() {
  final circle = Circle(6), rectangle = Rectangle(3, 8);
  circle.draw();
  rectangle.draw();
}

abstract class Shape {

  //abstract method
  void draw();
}

class Circle extends Shape {
  //Constructor
  Circle(this.radius);
  //Instance Variable
  final double radius;
  //Override Abstract Method
  @override
  void draw() {
    print('Area of circle:  ${3.141 * radius * radius}');
  }
}

class Rectangle extends Shape {
  //Constructor
  Rectangle(this.length,this.width);
  //Instance Variables
  final double width, length;
  //Override Abstract Methods
  @override
  void draw() {
    print('Area of Rectangle: ${length * width}');
  }
}
