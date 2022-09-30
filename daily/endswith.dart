import 'dart:io';

void main() {
  String s1;
  String s2;
  print("enter s1");
  s1 = stdin.readLineSync()!;
  print("enter s2");
  s2 = stdin.readLineSync()!;
  if (s1.endsWith("@gmail.com")) {
    print("valid email");
  } else {
    print("invalid email");
  }
}
