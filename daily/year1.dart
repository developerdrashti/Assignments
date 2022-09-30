import 'dart:io';

void main() {
  int y;
  double ans;
  print("enter y");
  y = int.parse(stdin.readLineSync()!);
  ans = y / 12;
  print("ans=$ans");
}
