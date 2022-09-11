import 'dart:io';

void main() {
  myfun();
}

void myfun() {
  int num, i;
  for (i = 1; i <= 1; i++) {
    print("enter number");
    num = int.parse(stdin.readLineSync()!);
    if (num % 2 == 0) {
      print("even number");
    } else {
      print("odd number");
    }
  }
}
