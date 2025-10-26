class Credential{
  const Credential({this.email='', this.password=''});
  final String email;
  final String password;

//copyWith method used update immutable properties of a class
//and create a new instance 
  Credential copyWith({
    String? email,
    String? password
  }){
    return Credential(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  String toString()=>'Credential($email,$password)';

}

void main(){
  const credentials=Credential(email: 'abc@hotmail.com',password: '6666');
  print(credentials);
  final update1=credentials.copyWith(email: 'jehan@gmail.com',password: '12345');
  print(update1);
  final update2=credentials.copyWith(email: 'j@gmail.com',password: '0000');
  print(update2);

}