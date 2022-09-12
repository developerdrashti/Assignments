import 'dart:io';

void main() {
  int n1;
  print("enter number");
  n1 = int.parse(stdin.readLineSync()!);
  con(n1);
}

int con(int num1) {
  int ans = num1 % 2;
  if (ans == 0) {
    print("number is even");
  } else {
    print("number is odd");
  }
  return ans;
}
