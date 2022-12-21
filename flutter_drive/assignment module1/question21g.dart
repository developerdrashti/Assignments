//question21g
import 'dart:io';

void main() {
  print("we are print reverse number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = N - 1; j >= i; j--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}