///Abstarct class is used to define abstarct methods
///so that methods can be used in a generic way with uther
///subclasses

void main() {
  final circle = Circle(5), rectangle = Rectangle(4, 8);
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

  //Property
  final double radius;

  //Override Abstract Method
  @override
  void draw() {
    print('Area of circle:  ${3.414 * radius * radius}');
  }
}

class Rectangle extends Shape {
  //Constrctor
  Rectangle(this.width, this.length);

  //Properties
  final double length, width;

  //Methods
  @override
  void draw() {
    print('Area of Rectangle: ${length * width}');
  }
}
