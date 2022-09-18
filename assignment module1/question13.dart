// Write a program to find the Max number from the given three number using Nested If
import 'dart:io';

class nested {
  late int a, b, c, max;

  void impot() {
    print("enter a max number");
    a = int.parse(stdin.readLineSync()!);
    print("enter b max number");
    b = int.parse(stdin.readLineSync()!);
    print("enter c max number");
    c = int.parse(stdin.readLineSync()!);
    if (a > b) {
      if (a > c) {
        print("a is a max number");
      } else {
        print("c is a max number");
      }
    } else {
      if (b > c) {
        print("b is a max number");
      } else {
        print("c is a max number");
      }
    }
  }
}

void main() {
  var obj = new nested();
  obj.impot();
}
