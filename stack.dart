
class Stack<T>{
  final List<T>_items=[];

  void push(T item)=>_items.add(item);

  T pop()=>_items.removeLast();
}

void main() {
  final stack=Stack<int>();

  stack.push(1);
  stack.push(3);
  stack.push(2);
  print(stack._items);
  print(stack.pop());
   print(stack._items);
  print(stack.pop());
   print(stack._items);

   final name=Stack<String>();
   name.push('Jehan');
   name.push('Binu');
   print(name._items);
  

  
}