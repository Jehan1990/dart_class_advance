import 'dart:math';

///Cascade operator (..) is used when you have to write a code 
///which has similar syntax or run a method of a class multiple times


class ClassPoint {
  List<Point> _points=[];

  void moveTo(Point point){
    _points=[point];
  }

  void lineUp(Point point){
    _points.add(point);
  }
}

void main(){

  //Cascade method-after creating instance of class 
  //with semicolan at the end of last cascade
  final path=ClassPoint()
  ..moveTo(Point(0, 0))
  ..lineUp(Point(2, 0))
  ..lineUp(Point(2, 2))
  ..lineUp(Point(0, 2))
  ..lineUp(Point(0, 0));

  
  //Normal method
  path.moveTo(Point(0, 0));
  path.lineUp(Point(2, 0));
  path.lineUp(Point(2, 2));
  path.lineUp(Point(0, 2));
  path.lineUp(Point(0, 0));
  



}