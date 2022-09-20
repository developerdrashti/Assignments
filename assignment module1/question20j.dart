//j. Write a program you have to make a summation of first and last Digit. (E.g. 1234 ans:-5)
import 'dart:io';

void main() {
  double n, sum = 0, firstdigit, lastdigit;
  print("enter number to find of first and last digit");
  n = double.parse(stdin.readLineSync()!);
  lastdigit = n % 10;
  while (n >= 10) {
    n = n / 10;
  }
  firstdigit = n;
  sum = firstdigit + lastdigit;
  print("sum=$sum");
}
