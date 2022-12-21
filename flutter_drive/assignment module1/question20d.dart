//d .write a program you have to find the factorial of given number.
import 'dart:io';

void main() {
  factorial();
}

void factorial() {
  print("enter n");
  int n = int.parse(stdin.readLineSync()!);
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }

  print("factorial of $n");
  print(result);
}
