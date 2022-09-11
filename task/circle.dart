import 'dart:io';

void main() {
  int r;
  double p = 3.14, circle;
  print("enter value r");
  r = int.parse(stdin.readLineSync()!);

  circle = 2 * p * r;
  print("circle=$circle");
}
