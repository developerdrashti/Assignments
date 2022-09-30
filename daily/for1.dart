import 'dart:io';

void main() {
  int number1;
  int? sum;
  for (int i = 1; i < 6; i++) {
    print("enter number");
    number1 = int.parse(stdin.readLineSync()!);
    sum = sum! + number1;

    print("sum= $sum");
  }
}
