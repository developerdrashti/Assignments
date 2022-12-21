//write to a program to find area of tringle

import 'dart:io';

class Triangle {
  void display() {
    late int base;
    late int height;
    late double area;

    print("Enter base of number:");
    base = int.parse(stdin.readLineSync()!);
    print("Enter Height of number:");
    height = int.parse(stdin.readLineSync()!);
    area = (base * height) / 2;
    print("Area of Triangle is $area ");
  }
}

void main() {
  var obj = new Triangle();
  obj.display();
}
