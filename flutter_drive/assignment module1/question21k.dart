//question21k
import 'dart:io';

void main() {
  print("we are print number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);
  int k;
  for (int i = 1; i <= N; i++) {
    for (int j = 1; j <= i; j++) {
      k = j % 2;
      stdout.write("$k");
    }
    stdout.writeln();
  }
}
