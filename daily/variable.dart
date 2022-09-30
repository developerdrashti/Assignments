import 'dart:io';

class student {
  int? num1 = 10; //instance variable-it can only acess with object
  static int num3 = 101;
  void display() {
    int? num2 = 20; //local variable
    print("num2=$num2");
  }
}

void main() {
  var obj = new student();
  //acessing local variable
  obj.display();

  //acess instance varible
  print("num1=${obj.num1}");

  //static variable:no need to use object here,only class name required
  print("static variable:${student.num3}");
}
