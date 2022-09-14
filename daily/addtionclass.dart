import 'dart:io';

class sample {
  late int num1, num2, ans;

  void input() {
    print("enter a number1");
    num1 = int.parse(stdin.readLineSync()!);
    print("enter a number2");
    num2 = int.parse(stdin.readLineSync()!);
  }

  void fun() {
    ans = num1 + num2;
    print("ans=$ans");
  }

  void fun1() {
    ans = num1 - num2;
    print("ans=$ans");
  }

  void fun2() {
    ans = num1 * num2;
    print("ans=$ans");
  }

  void fun3() {
    double ans = num1 / num2;
    print("ans=$ans");
  }
}

void main() {
  var obj = new sample();
  obj.input();
  obj.fun();
  obj.fun1();
  obj.fun2();
  obj.fun3();
}
