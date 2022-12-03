import 'dart:html';

import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  String? Result;
  int? number;
  int fact = 1;
  int? a;
  bool status = true;
  TextEditingController usercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TEXTFORM  FIELD"),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              controller: usercontroller,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                label: Text("user name"),
                hintText: "user name",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(5),
                )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 200,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Result = usercontroller.text.toString();
                    number = int.parse(usercontroller.text.toString());
                    if (number! % 2 == 0) {
                      Result = "even number";
                    } else {
                      Result = "odd number";
                    }
                  });
                  usercontroller.text = "";
                },
                child: Text("odd/even")),
          ),
          Column(children: [
            Container(
                width: MediaQuery.of(context).size.width - 200,
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number = int.parse(usercontroller.text.toString());
                        if (number! > 0) {
                          Result = "positive number";
                        } else if (number! == 0) {
                          Result = "zero";
                        } else {
                          Result = "negative number";
                        }
                      });
                      usercontroller.text = "";
                    },
                    child: Text("positive/negative"))),
            Container(
              width: MediaQuery.of(context).size.width - 200,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = int.parse(usercontroller.text.toString());
                    int result = 1;
                    for (int i = 1; i <= number!; i++) {
                      fact *= i;
                      print("$a");
                    }
                    Result = "$fact";
                  });
                  usercontroller.text = "";
                },
                child: Text("factorial"),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 200,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = int.parse(usercontroller.text.toString());
                    int a = 0, b = 1, c;
                    for (int i = 1; i <= number!; i++) {
                      c = a + b;
                      Result = ("$c");
                      a = b;
                      b = c;
                      print("$a");
                    }
                    for (int i = 0; i <= a; i++) {
                      Container(
                        width: 30,
                        height: 30,
                        color: Colors.blue,
                        margin: EdgeInsets.all(10),
                      );
                    }
                  });
                  usercontroller.text = "";
                },
                child: Text("fibbonacci"),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "$Result",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
          ]),
        ]));
  }
}
