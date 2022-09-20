//h .Write a program to find out the max from given number (E.g. No: -1562 Max number is 6 )
import 'dart:io';

void main() {
  int num1, num2;
  print("enter number");
  num1 = int.parse(stdin.readLineSync()!);
  print("enter number");
  num2 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    print("maximum value num1");
  } else {
    print("maximum value num2 ");
  }
}
