import 'dart:io';

void main() {
  myfun();
}

void myfun() {
  int n, i;
  for (i = 0; i <= 3; i++) {
    print("enter any number");
    n = int.parse(stdin.readLineSync()!);
    if (n < 0) {
      print("negative number");
    } else if (n > 0) {
      print("positive number");
    } else {
      print("number zero");
    }
  }
}
