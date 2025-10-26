///Default constructor is create automatically by dart when not specified
///It is created when instance of the class is created

class Person{
  String? name;
  int? age;
  bool? human;
  
}

void main(){
final person=Person();
print('${person.name} ${person.human} ${person.age}');

}