//1
//22
//333
//4444
//55555
import 'dart:io';

void main() {
  print("enter  number :");
  var i = int.parse(stdin.readLineSync()!);
  for (int j = 1; j <= i; j++) {
    print("$j  " * j);
  }
}
