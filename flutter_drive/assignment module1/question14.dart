//Write a program to find the Max number from the given three number using Ternary Operator
import 'dart:io';


class MaxNumber {
  void display() {
    late double a, b, c, max;

    print("Enter number 1:");
    a = double.parse(stdin.readLineSync()!);
    print("Enter number 2:");
    b = double.parse(stdin.readLineSync()!);
    print("Enter number 3:");
    c = double.parse(stdin.readLineSync()!);

    max = (a > b) ? (a > c ? a : c) : (b > c ? b : c);
    print(" Max number is $max");
  }
}

void main() {
  var obj = new MaxNumber();
  obj.display();
}
