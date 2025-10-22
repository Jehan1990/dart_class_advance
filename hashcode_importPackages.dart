///2 same objects should have same hashcode
///Equatible package will override hashcode for your created class
///With this override for equality operator is not required
///with equatable package the override stringify getter is used to automatically 
///take care of toString() method overriding
///Equatable in 4 steps
///1-Install in pubspec.yaml 
///2-Add extends Equatable to our classes
///3-Override props variable
///4-Override stringify and return true
///Equatable should be used only with immutable classes




import 'package:equatable/equatable.dart';

class Point extends Equatable{
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  List<Object?> get props =>[x,y];

  @override
  bool? get stringify => true;
  

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) {
    return Point(x*other, y*other);
  }
}

void main() {
  print(Point(0, 0)==Point(0, 0));
  print(Point(1, 1));
  print(Point(1, 1) + Point(2, 0));
  print(Point(2, 1)*5);
}

  
