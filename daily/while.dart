import 'dart:io';

void main() {
  int i, num;
  num = 1;
  i = 1;
  print("enter value of num");
  num = int.parse(stdin.readLineSync()!);

  while (i <= 5) {
    print(i);
    i++;
  }
}
