///IMPORTANT NOTES:--

///Override is used to override the super class method

class Animal {
  const Animal({required this.age});
  //this is super constructor
  final int age;
  void sleep() => print('sleep');
  void sleep1() => print('sleep1');
}
//Animal is the super class

//Dog,Cow,CleverDog are subclasses

class Dog extends Animal {
  Dog({required int age}) : super(age: age);
  //Calling the super constructor using constructor with initialiser list
  void bark() => print('bark');
  //To override method use override annotation for better code understanding
  @override
  void sleep() => print('Dog Sleeping');

  //To call superclass method and some other code
  @override
  void sleep1() {
    super.sleep1();
    print('Sleep More');
    //to use super method instead of subclass method
  }
}

void main() {
  final animal = Animal(age: 12);
  animal.sleep();

  final dog = Dog(age: 5);
  dog.bark();
  dog.sleep(); //Override method
  dog.sleep1(); //use super class method
}
