import 'dart:io';

void main() {
  int m;
  int ans;
  print("enter the value");
  m = int.parse(stdin.readLineSync()!);
  ans = m * 30;
  print("ans=$ans");
}
