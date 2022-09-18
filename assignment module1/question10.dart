//write a program to check the given number is positive,negative

import 'dart:io';

void main() {
  int num1;
  print("enter number");
  num1 = int.parse(stdin.readLineSync()!);

  if (num1 > 0) {
    print("number is positive");
  } else if (num1 < 0) {
    print("number is negative");
  } else {
    print("number is zero");
  }
}
