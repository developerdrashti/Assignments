import 'dart:io';

class student {
  //static method:which is contain only static member
  //there is no need to create object we can acess directly using of class name

  static void display() {
    print("this is static method");
  }
}

void main() {
  student.display();
}
