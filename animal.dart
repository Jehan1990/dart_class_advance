///IMPORTANT NOTES:--

///Inheritance or Subclassing is used to inherit properties and methods from other classes.
///Subclassing extends the fuctionality of an existing class and increase code reuse
///Subclassing is used to model IS-A method
///In Dart subclass dont inherit super constructor automatically

class Animal {
  const Animal({required this.age}); 
  //this is super constructor
  final int age;
  void sleep() => print('sleep');
}
//Animal is the super class

//Dog,Cow,CleverDog are subclasses

class Dog extends Animal {
  Dog({required int age}) : super(age: age); 
  //Calling the super constructor
  void bark() => print('bark');
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);
  //Calling the super constructor
  void moo() => print('moo');
}

//CleverDog class extends dog which extends to animal.
//CleverDog inherits from dog and animal class
class CleverDog extends Dog {
  CleverDog({required int age}) : super(age: age);
  //Calling the super constructor
  void catchBall() => print('Catch');
}

void main() {
  final animal = Animal(age: 12);
  animal.sleep();

  final dog = Dog(age: 5);
  dog.bark();
  dog.sleep(); //Inheritance
 

  final cow = Cow(age: 45);
  cow.moo();
  cow.sleep(); //Inheritance or subclassing

  final cleverDog = CleverDog(age: 6);
  cleverDog.catchBall();
  cleverDog.bark(); //Inheritance
  cleverDog.sleep(); //Inheritance
}
