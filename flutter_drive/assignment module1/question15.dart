//write a program  to find the max number from the given three number using nested if
import 'dart:io';

class MaxNumber {
  void display() {
    late double a, b, c;

    print("Enter number 1:");
    a = double.parse(stdin.readLineSync()!);
    print("Enter number 2:");
    b = double.parse(stdin.readLineSync()!);
    print("Enter number 3:");
    c = double.parse(stdin.readLineSync()!);

    if (a > b) {
      if (a > c) {
        print("A is a Max number");
      } else {
        print(" c is a Max number");
      }
    } else {
      if (b > c) {
        print(" B is a Max number");
      } else {
        print(" c is a Max number");
      }
    }
  }
}

void main() {
  var obj = new MaxNumber();
  obj.display();
}
