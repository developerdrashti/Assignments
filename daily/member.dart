import 'dart:io';

class sample {
  int num = 10;
  String name = "python";

  void display() {
    print("num=$num");
    print("name=$name");
  }
}

void main() {
  var obj = new sample();
  obj.display();
}
