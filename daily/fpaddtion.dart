import 'dart:io';
void main()
{
    int n1,n2;
    print("enter number");
    n1=int.parse(stdin.readLineSync()!);
    print("enter number2");
    n2=int.parse(stdin.readLineSync()!);
    addtion(n1,n2);
}
void addtion(int num1,int num2) 
{
    int ans;
    ans=num1+num2;
    print("ans=$ans");
}