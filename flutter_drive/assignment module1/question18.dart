//Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be
//Menu Driven)
import 'dart:io';

void main() {
  int sum;
  double num1, num2, add, sub, mul, div;

  print("Enter Number 1:");

  num1 = double.parse(stdin.readLineSync()!);
  print("Enter Number 2: ");

  num2 = double.parse(stdin.readLineSync()!);

  print(
      "1. Addition \n 2. Subtraction \n 3.Multiplication \n 4.Division \n Enter number:");

  sum = int.parse(stdin.readLineSync()!);
  switch (sum) {
    case 1:
      {
        add = num1 + num2;
        print("Addition is : $add ");
      }
      break;
    case 2:
      {
        sub = num1 - num2;
        print("Subtraction is : $sub ");
      }
      break;
    case 3:
      {
        mul = num1 * num2;
        print("Multiplication is : $mul ");
      }
      break;
    case 4:
      {
        div = num1 / num2;
        print("Division is : $div ");
      }
      break;
    default:
      {
        print("Invalid Number");
      }
      break;
  }
}
