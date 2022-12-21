//write a program to check the given year is leap year or not
import 'dart:io';

void main() {
  double year;
  print("enter year");
  year = double.parse(stdin.readLineSync()!);
  {
    if (year % 4 == 0) {
      print("enter a leap year");
    } else {
      print("enter a not leap year");
    }
  }
}
