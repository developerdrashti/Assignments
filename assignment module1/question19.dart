//Write a program of to find out the Area of Triangle, Rectangle and Circle using If Condition.(Must
//Be Menu Driven)
import 'dart:io';

import 'dart:math';

void main() {
  double A, B, C;
  int opt;

  print("\n-----Main Menu----\n1.Triangle");
  print("2.Rectangle\n3.Circle");
  print("\nEnter your choice : ");
  opt = int.parse(stdin.readLineSync()!);

  if (opt == 1) {
    triangle();
  } else if (opt == 2) {
    Rectangle();
  } else if (opt == 3) {
    double r, area;
    print("Enter value of redius");
    r = double.parse(stdin.readLineSync()!);
    area = findTrianglearea(r);
    print("area of circle is : $area");
  } else {
    print("Your choice is not match ");
  }
}

double findTrianglearea(r) {
  const double pi = 3.14159265358979323846;
  return (pi * r * r);
}

void triangle() {
  double S, A, B, C, Ans;
  print("\nEnter value of A  : ");
  A = double.parse(stdin.readLineSync()!);
  print("\nEnter value of B  : ");
  B = double.parse(stdin.readLineSync()!);
  print("\nEnter value of C  : ");
  C = double.parse(stdin.readLineSync()!);

  S = (A + B + C) / 2;
  Ans = (sqrt(S * (S - A) * (S - B) * (S - C)));
  print("Area of triangle is : $Ans");
}

void Rectangle() {
  int width, height, Ans;
  print("\nEnter value of width  : ");
  width = int.parse(stdin.readLineSync()!);
  print("\nEnter value of height  : ");
  height = int.parse(stdin.readLineSync()!);

  Ans = width * height;
  print("Area of Rectangle : $Ans");
}
