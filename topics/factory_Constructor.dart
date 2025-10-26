///Factory Constructor- is used commanly to parsing JSON data
///Factory Constructor are usefull:-
///1-Implement a constructor which does not create an instance of it class
///2-Initialise a final variable using logic which cant be handeled in the initialiser list
///Factory constructors you can create instance of subclasses.
///Factory constructor can use logic to calculate a variable or property required for subclasses


import 'dart:math';

abstract class Shape {
  
  const Shape();
  
  double get area;

  //Creating Factory Constructor
  factory Shape.fromJson(Map<String,Object> json){
    final type=json['type'];
    switch(type){
      case 'square':
      final side=json['side'];
      if(side is double){
        return Square(side);
      }
      throw UnsupportedError('invalid or missing side property');
      case 'circle':
      final radius=json['radius'];
      if(radius is double){
        return Circle(radius);
      }
      throw UnsupportedError('invalid or missing radius property');
      default:
      throw UnimplementedError('shape $type not recognized');
    }

  }
}

class Square extends Shape {
  const Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  const Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  //JSON data
  final shapeJson=[
    {
      'type':'square',
      'side':10.0,
    },
    {
      'type':'circle',
      'radius':5.0
    },
  ];

  final shapes=shapeJson.map((shapeJson)=>Shape.fromJson(shapeJson));
  shapes.forEach(printArea);
}
