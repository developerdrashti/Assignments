import 'dart:io';

void main() {
  int i, num;
  for (i = 1; i <= 5; i++) {
    print("enter number");
    num = int.parse(stdin.readLineSync()!);
    if (num % 2 == 0) {
      print("even number");
    } else {
      print("odd number");
    }
  }
}
