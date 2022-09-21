import 'dart:io';

void main() {
  String? s1;
  String? s2;

  print("enter String1");
  s1 = stdin.readLineSync()!;

  print("enter String2:");
  s2 = stdin.readLineSync()!;

  print("String1:" + s1.toUpperCase());
  print("String2:" + s2.toLowerCase());
}
