//f. write a program you have to print the table of given number.
import 'dart:io';

void main() {
  int num, i;
  print("enter a number to generate the table in c");
  num = int.parse(stdin.readLineSync()!);
  print("num=$num");
  for (i = 1; i <= 10; i++) {
    int ans = num * i;
    print("$num*$i=  $ans");
  }
}
