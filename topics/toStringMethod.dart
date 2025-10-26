///Inbuilt types already have the toString() method
///print method implements toString() method to the in built types automatically
///
class Point{
  const Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString()=>'Point($x,$y)';

  
}
void main(){
  var list=[1,2,3];
  print(list);
  //This shows that print will call toString() method automatically on inbuilt types

  print(Point(1, 1));//Output is instance of 'Point' as the toString() is not implemented

  const list1=[
    Point(1,3),Point(2,4),
  ];
  print(list1);

}