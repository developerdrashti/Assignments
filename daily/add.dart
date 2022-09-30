import 'dart:io';

void main() {
  List? l1 = List.filled(5, "null", growable: false);
  l1[0] = "dart";
  l1[1] = "flutter";
  l1[2] = "android";
  print("l1");

  l1.add(101);
  print(l1);
}
