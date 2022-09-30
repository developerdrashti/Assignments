import 'dart:io';

class sample {
  late int num;

  void input() {
    print("enter number");
    num = int.parse(stdin.readLineSync()!);
  }

  void display() {
    if (num % 2 == 0) {
      print("enter even number");
    } else {
      print("enter odd number");
    }
  }
}

void main() {
  var obj = new sample();
  obj.input();
  obj.display();
}
