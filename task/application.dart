import 'dart:io';

void main() {
  print("......WELCOME TO TOPS QUIZ GAMING CHALLENGE........");
  print(".......  1)QUIZ MASTER");
  print("..........2)quiz cracker");
  menu();
  more_option();
}

void menu() {
  int? role;
  print("select your role");
  role = int.parse(stdin.readLineSync()!);
  if (role == 1) {
    master();
  } else if (role == 2) {
    cracker();
  } else {
    print("sorry you  not chosen right role");
  }
}

void master() {
  print("welcome  master");
  print("...SHARE YOUR BRAIN AND ADD SOME CHALLENGE QUESTION......");
  print("press 1:for add question");
  print("press 2:for view question");
  print("press 3:for delet question");
  print("press 4:for exit");
  print("which operation you want to perform");
  int operation = int.parse(stdin.readLineSync()!);

  if (operation == 1) {
    add_question();
  } else if (operation == 2) {
    view_question();
  } else if (operation == 3) {
    delete_question();
  } else {
    print("exit quiz");
  }
}

void add_question() {
  question1();
  question2();
  question3();
  question4();
  question5();
  question6();
  question7();
  question8();
  question9();
  question10();
  question11();
}

void question1() {
  print("q1 Who is the Father of our Nation? ..."
      "\n (A)Mohandas Karamchand Gandhi"
      "\n (B) javaharlal nehru"
      "\n (c)  saradar patel"
      "\n (D)  narendra modi");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'A') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void question2() {
  print("q2 Who invented Computer?"
      "\n (A) drashti patel"
      "\n (B)Bill Gates "
      "\n (c)Charles Babbage"
      "\n (d)denny richie");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'c') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void question3() {
  print("q1 Who is the Father of our Nation? ..."
      "\n (A)Mohandas Karamchand Gandhi"
      "\n (B) javaharlal nehru"
      "\n (c)  saradar patel"
      "\n (D)  narendra modi");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'A') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void question4() {
  print("q4 Olylmpics games are held after every?"
      "\n (A) five year"
      "\n (B)four year "
      "\n (c)three year"
      "\n (d)two year");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'B') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void question5() {
  print("q5 How many players are there in a cricket team?"
      "\n (A)11 "
      "\n (B)16 "
      "\n (c)17"
      "\n (d)22");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'A') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void question6() {
  print("q6 Which animal is called the ship of the desert? "
      "\n (A) camel "
      "\n (B) lion"
      "\n (c) elephant"
      "\n (d) bear");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'A') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void question7() {
  print("q7 Agra is situated on the bank of river? "
      "\n (A) ganga "
      "\n (B)saryu "
      "\n (c)kaveri "
      "\n (d)yamuna ");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'd') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void question8() {
  print("q8 Fastest animal on earth is? "
      "\n (A) elephant "
      "\n (B) chitah"
      "\n (c) lion"
      "\n (d) bear");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'B') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void question9() {
  print("q9 National Tree of India is? "
      "\n (A) apple tree "
      "\n (B) banana tree"
      "\n (c) papaya tree"
      "\n (d) none");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'B') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void question10() {
  print("q10 Which flower is white in colour? "
      "\n (A) latous "
      "\n (B)  rose"
      "\n (c) jasmin"
      "\n (d) all");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'c') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void question11() {
  print("q11 Saina Nehwal is associated with which sports? "
      "\n (A) badminton "
      "\n (B) tennis "
      "\n (c) hockey"
      "\n (d) kabbbaddi");
  String? option;
  print("enter option..");
  option = stdin.readLineSync()!;
  if (option == 'A') {
    print("your ans is right");
  } else {
    print("your ans is wrong");
  }
}

void view() {
  print("q1 Who is the Father of our Nation? ..."
      "\n (A)Mohandas Karamchand Gandhi"
      "\n (B) javaharlal nehru"
      "\n (c)  saradar patel"
      "\n (D)  narendra modi");

  print("q2 Who invented Computer?"
      "\n (A) drashti patel"
      "\n (B)Bill Gates "
      "\n (c)Charles Babbage"
      "\n (d)denny richie ");

  print("q3 Who is the Father of our Nation? ..."
      "\n (A)Mohandas Karamchand Gandhi"
      "\n (B) javaharlal nehru"
      "\n (c)  saradar patel"
      "\n (D)  narendra modi");

  print("q4 Olylmpics games are held after every?"
      "\n (A) five year"
      "\n (B)four year "
      "\n (c)three year"
      "\n (d)two year");

  print("q5 How many players are there in a cricket team?"
      "\n (A)11 "
      "\n (B)16 "
      "\n (c)17"
      "\n (d)22");

  print("q6 Which animal is called the ship of the desert? "
      "\n (A) camel "
      "\n (B) lion"
      "\n (c) elephant"
      "\n (d) bear");

  print("q7 Agra is situated on the bank of river? "
      "\n (A) ganga "
      "\n (B)saryu "
      "\n (c)kaveri "
      "\n (d)yamuna ");

  print("q8 Fastest animal on earth is? "
      "\n (A) elephant "
      "\n (B) chitah"
      "\n (c) lion"
      "\n (d) bear");

  print("q9 National Tree of India is? "
      "\n (A) apple tree "
      "\n (B) banana tree"
      "\n (c) papaya tree"
      "\n (d) none");

  print("q10 Which flower is white in colour? "
      "\n (A) latous "
      "\n (B)  rose"
      "\n (c) jasmin"
      "\n (d) all");

  print("q11 Saina Nehwal is associated with which sports? "
      "\n (A) badminton "
      "\n (B) tennis "
      "\n (c) hockey"
      "\n (d) kabbbaddi");
}

void view_question() {
  view();
}

void delete_question() {
  print("delete question..");
}

void cracker() {
  print("no update right now ");
}

void more_option() {
  bool status = true;
  String? choices;
  while (status) {
    print(
        "do you want to perform more operation: press y for yes and n for no: ");
    choices = stdin.readLineSync()!;
    if (choices == 'y') {
      main();
    } else {
      cracker();
      break;
    }
  }
}
