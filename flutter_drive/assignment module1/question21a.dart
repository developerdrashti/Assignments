//21. Create Below Patterns:
import 'dart:io';

void main() {
  print("enter first number :");
  var i = int.parse(stdin.readLineSync()!);
  for (int j = 1; j <= i; j++) {
    print("*  " * j);
  }
}

