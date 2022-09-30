import 'dart:io';

class A {
  void displayA() {
    print("A class data");
  }
}

class B extends A {
  void displayB() {
    print("B class data");
  }
}

class C extends B {
  void displayC() {
    print("C class data");
  }
}

void main() {
  var obj = new C();
  obj.displayA();
  obj.displayB();
  obj.displayC();
}
