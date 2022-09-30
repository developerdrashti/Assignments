import 'dart:io';

void main() {
  int num, count, sum = 0;
  print("enter a positive number");
  num = int.parse(stdin.readLineSync()!);
  for (count = 1; count <= num; ++count) {
    sum += count;
  }
  print("sum=$sum");
}
