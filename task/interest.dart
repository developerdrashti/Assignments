import 'dart:io';

void main() {
  int p, r, n;
  double ans;
  print("enter p");
  p = int.parse(stdin.readLineSync()!);
  print("enter r");
  r = int.parse(stdin.readLineSync()!);
  print("enter n");
  n = int.parse(stdin.readLineSync()!);
  ans = p * r * n / 100;
  print("ans= $ans");
}
