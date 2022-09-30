import 'dart:io';

void main() {
  int i;
  int marks;
  for (i = 1; i <= 5; i++) {
    print("enter marks");
    marks = int.parse(stdin.readLineSync()!);
    if (marks < 35) {
      break;
    } else {
      print("marks=$marks");
    }
  }
}

