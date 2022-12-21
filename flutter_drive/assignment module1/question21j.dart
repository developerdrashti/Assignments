//question21j
import 'dart:io';

void main() {
  late int num = 0;
  print("we are print number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = 1; j <= i; j++) {
      num++;
      stdout.write('$num ');
    }
    stdout.writeln();
  }
}
