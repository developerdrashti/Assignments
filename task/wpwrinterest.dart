import 'dart:io';

void main() {
  int p, r, n;
  print("enter value");
  p = int.parse(stdin.readLineSync()!);
  print("enter value");
  r = int.parse(stdin.readLineSync()!);
  print("enter value");
  n = int.parse(stdin.readLineSync()!);
  fun(p, r, n);
}

void fun(p, r, n) {
  double ans = p * r * n / 100;
  print("$ans");
}
