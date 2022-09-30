import 'dart:io';

class student {
  student.display() {
    print("this is named constructor");
  }
  student.hello() {
    print("this is 2nd constructor");
  }
}

void main() {
  var obj = student.display();
  var obj2 = student.hello();
}
