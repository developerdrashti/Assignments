import 'dart:io';

void main() {
  int y;
  double ans;
  print("enter value of y");
  y = int.parse(stdin.readLineSync()!);
  ans = y * 12;
  print("ans=$ans");
}
