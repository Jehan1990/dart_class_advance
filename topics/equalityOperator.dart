///Equality and what it means for 2 objects to be equal
///Dart does not know how to compare instances of class Point
///For this we need to implement equality operator


class Point{
  
  Point(this.x, this.y);
  final int x;
  final int y;


  @override
  String toString()=>'Point($x,$y)';


  //Implementing Equality operator
  
  //operator == is called operator overload

  //Method 1-This allow point to be compared with other data type and return false
  // @override
  // bool operator ==(Object other) {
  //   if(other is Point){
  //     return x==other.x && y==other.y;
  //   }else{
  //     return false;
  //   }
  
  // }

  //Method2-This will not allow point ro be compared with any other type
  @override
  bool operator ==(covariant Point other) {
    return x==other.x && y==other.y;
  }
  

  
}
void main(){
  print(Point(0, 0)==Point(0, 1));

  

}