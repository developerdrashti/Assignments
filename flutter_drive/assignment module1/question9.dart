//write a program to show  of two  no's without using third variable.
import 'dart:io';

void main() {
  int i, j;
  print("enter  number");
  i = int.parse(stdin.readLineSync()!);
  print("enter number");
  j = int.parse(stdin.readLineSync()!);

  i = i + j;
  j = i - j;
  i = i - j;
  print("swap number=$i,$j");
}
