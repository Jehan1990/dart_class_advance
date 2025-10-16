/// subclass can only extend one superclass
/// subclass can implement multiple interfaces
/// if a class implements an interface,
/// it must override all the properties and methods of that interface
/// if a class extends a superclass,
/// then it has to override only abstract properties and methods.
/// 
/*
KEYWORDS    TYPE        ABSTRACT_METHODS    CONCRETE_METHODS
extend      SINGLE      MUST OVERRIDE       CAN OVERRIDE(optional)
implement   MULTIPLE    MUST OVERRIDE       MUST OVERRIDE
*/
///Usually abstract classes are used as interfaces.



void main() {}

abstract class ImplementA {
  void a();
  void c() => print("c");
}

abstract class ImplementB {
  void b();
}

//As class AB implements both ImplementA and ImplementB
//it has to override all the methods of both the interfaces
class AB implements ImplementA, ImplementB {
  @override
  void a() {}
  @override
  void b() {}
  @override
  void c() {}
}

//As class SubClassAB extends ImplementA
//it has to override only the abstract method a()
class SubClassAB extends ImplementA{
  @override
  void a() {}

}
