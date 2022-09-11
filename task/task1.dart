import 'dart:io';

void main() {
  int i, num;
  int sum = 0;

  for (i = 5; i >= 1; i--) {
    print("enter value a");
    num = int.parse(stdin.readLineSync()!);
    sum = sum + num;
  }
  print("sum=$sum");
}
