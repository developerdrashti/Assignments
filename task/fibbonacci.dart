import 'dart:io';

void main() {
  print("enter value of n");
  int n = int.parse(stdin.readLineSync()!);
  fibbonaccie_series(n);
}

void fibbonaccie_series(n) {
  int a = 0, b = 1, c;
  for (int i = 1; i <= n; i++) {
    c = a + b;
    a = b;
    b = c;
    print("$a");
  }
}
