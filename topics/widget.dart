///Composition shows has-a relation while inheritance shows is-a relation

abstract class Widget{}

class Text extends Widget{//Inheritance
  Text(this.text);
  final String text;
}

class Button extends Widget{
  Button({required this.child, this.onPressed});
  final Widget child;
  final void Function()? onPressed;
}
void main(){
  final button=Button(
    child: Text('Hello'),//Composition-use composition to create complex Ui
    onPressed: () => print('button pressed'),
    );

    print(button.runtimeType);

}


//button has-a widget child is a composition