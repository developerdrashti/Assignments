//  Write Program use switch statement. Display Monday to Sunday
import 'dart:io';

void main() {
  int day;
  print("\n");
  print("\n1. monday");
  print("\n2. tuesday");
  print("\n3. wednesday");
  print("\n4. thursday");
  print("\n5. friday");
  print("\n6. saturday");
  print("\n7. sunday");
  day = int.parse(stdin.readLineSync()!);
  switch (day) {
    case 1:
      print("monday");
      break;
    case 2:
      print("tuesday");
      break;
    case 3:
      print("wednesday");
      break;
    case 4:
      print("thursday");
      break;
    case 5:
      print("friday");
      break;
    case 6:
      print("saturday");
      break;
    case 7:
      print("sunday");
      break;
    default:
      print("invalid input");
      break;
  }
}
