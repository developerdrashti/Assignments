import 'dart:io';

void main() {
  MENU();
  selection();
}

void MENU() {
  print("\n*****jay bhavani*********");
  print("NO of items      price");
  print("\n (1)alupuri       :40\n(2)pizza    :500\n(3)puff        :25");
}

void selection() {
  print("enter product which you can purchase");
  int number = int.parse(stdin.readLineSync()!);
  if (number == 1) {
    print("(1)alupuri         :40");
    alupuri();
  } else if (number == 2) {
    print("(2) pizza      :500");
    pizza();
  } else if (number == 3) {
    print("(3)puff           :25");
    puff();
  }
}

void alupuri() {
  print("enter number of quantity:");
  int alupuri = int.parse(stdin.readLineSync()!);
  int total = alupuri * 40;
  print("price will be:$total");
  anotheritem();
}

void pizza() {
  print("enter number of quantity:");
  int pizza = int.parse(stdin.readLineSync()!);
  int total = pizza * 500;
  print("price will be:$total");
  anotheritem();
}

void puff() {
  print("enter number of quantity:");
  int puff = int.parse(stdin.readLineSync()!);
  int total = puff * 25;
  print("price will be:$total");
  anotheritem();
}

void anotheritem() {
  bool status = true;
  String? choice;
  while (status) {
    print("do you want to purchase more item press y for yes and n for no");
    choice = stdin.readLineSync()!;
    if (choice == 'y') {
      MENU();
      selection();
    } else {
      status = false;
      break;
    }
  }
}
