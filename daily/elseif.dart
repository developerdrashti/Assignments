import 'dart:io';

void main() {
  int mark = 70;
  if (mark >= 70 && mark <= 100) {
    print("A grade");
  } else if (mark >= 60 && mark < 70) {
    print("B grade");
  } else if (mark >= 50 && mark < 60) {
    print("C grade");
  } else if (mark >= 40 && mark < 50) {
    print("D grade");
  } else {
    print("fail");
  }
}
