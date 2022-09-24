import 'dart:io';

void main() {
  String? name, gender, item, choice;
  int? age, price, total, gram, k22 = 4181, making_charge = 580, charges;
  bool status = true;
  double? des, netamount;
  print("---ENTER YOUR NAME----- ");
  name = stdin.readLineSync()!;
  print("---ENTER GENDER---");
  gender = stdin.readLineSync()!;
  print("---ENTER AGE---");
  age = int.parse(stdin.readLineSync()!);
  print("----ENTER GOLD ITEM---");
  item = stdin.readLineSync()!;
  print("----GRAM------");
  gram = int.parse(stdin.readLineSync()!);
  price = k22 * gram;
  print("gold price=$price");
  print("making_charge=580");
  charges = gram * making_charge;
  print("making_charge=$charges");
  print("total amount");
  total = making_charge + price;
  print("total amount :$total");

  if (gender == 'male') {
    if (age > 65) {
      if (total > 100000 && total < 200000) {
        print("DISCOUNT:15%");
        des = (total * 15) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      } else if (total > 200000 && total < 300000) {
        print("DISCOUNT:25%");
        des = (total * 25) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      } else {
        print("DISCOUNT:38%");
        des = (total * 38) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      }
    }

    if (age < 65) {
      if (total > 100000 && total < 200000) {
        print("DISCOUNT:10%");
        des = (total * 10) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      } else if (total < 200000 && total < 300000) {
        print("DISCOUNT:20%");
        des = (total * 20) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      } else {
        print("DISCOUNT:35%");
        des = (total * 35) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      }
    }
  } else {
    if (age > 65) {
      if (total > 100000 && total < 200000) {
        print("DISCOUNT:15%");
        des = (total * 15) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      } else if (total > 200000 && total < 300000) {
        print("DISCOUNT:25%");
        des = (total * 25) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      } else {
        print("DISCOUNT:38%");
        des = (total * 38) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      }
    } else {
      if (total > 100000 && total < 200000) {
        print("DISCOUNT:10%");
        des = (total * 10) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      } else if (total < 200000 && total < 300000) {
        print("DISCOUNT:20%");
        des = (total * 20) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      } else {
        print("DISCOUNT:35%");
        des = (total * 35) / 100;
        print("DISCOUNT:$des");
        netamount = total - des;
        print("netamount=$netamount");
      }

      print("*****invoice******");
      print("name=$name");
      print("gender=$gender");
      print("age=$age");
      print("gold item=$item");
      print("gold qty=$gram");
      print("gold price=$price");
      print("total making charges=$making_charge");
      print("total=$total");
      print("DISCOUNT=$des");
      print("NETAMOUNT=$netamount");
    }
  }

  while (status) {
    print("do you want to continue pree y for yes and press n for no::::");
    choice = stdin.readLineSync()!;
    if (choice == 'y') {
      main();
    } else {
      status = false;
    }
  }
}
