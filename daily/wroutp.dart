import 'dart:io';

void main() {
  print(checkoddeven());
}

String checkoddeven() {
  int num;
  print("enter number");
  num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    return "even number";
  } else {
    return "odd number";
  }
}
