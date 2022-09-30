import 'dart:io';

void main() {
  int? num;
  bool status = true;
  String? choice;
  while (status) {
    print("enter a number");
    num = int.parse(stdin.readLineSync()!);
    print("do you want to accept more  number");
    choice = stdin.readLineSync()!;
    if (choice == 'y') {
      status = true;
    } else {
      status = false;
    }
  }
}
