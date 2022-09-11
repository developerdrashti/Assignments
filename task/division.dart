import 'dart:io';

void main() {
  double num1, num2, ans;
  print("enter number1");
  num1 = double.parse(stdin.readLineSync()!);
  print("enter number2");
  num2 = double.parse(stdin.readLineSync()!);
  ans = num1 / num2;
  print("ans=$ans");
}
