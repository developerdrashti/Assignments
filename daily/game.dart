import 'dart:math';

import 'dart:io';

void main() {
  Random random = new Random();
  int computer = random.nextInt(101);

  bool status = true;
  int user;
  while (status) {
    print("enter number");
    user = int.parse(stdin.readLineSync()!);
    if (user > computer) {
      print("HINT: guess lower number");
    } else if (user < computer) {
      print("HINT :guess higher number");
    } else {
      print("you got it!!!!!");
      status = false;
    }
  }
}
