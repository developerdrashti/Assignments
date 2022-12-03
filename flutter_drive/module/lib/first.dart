import 'dart:io';

import 'package:flutter/material.dart';

class reverse extends StatefulWidget {
  const reverse({super.key});

  @override
  State<reverse> createState() => _reverseState();
}

class _reverseState extends State<reverse> {
  int? number;
  int? Result;
  int? input;
  double? Reverse;
  TextEditingController usercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              controller: usercontroller,
              decoration: InputDecoration(
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
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  int num = int.parse(usercontroller.text.toString());
                  int digit = num % 10;
                  num = num ~/ 10;

                  int digit2 = num % 10;
                  num = num ~/ 10;
                  int digit3 = num % 10;
                  num = num ~/ 10;
                  int reversed =
                      (digit * 1000) + (digit2 * 100) + (digit3 * 10) + num;
                  Result = reversed;
                });

                usercontroller.text = "";
              },
              child: Text(
                "submit",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "$Result",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
        ]),
      ),
    );
  }
}

void ReverseNumber(input) {
  int? revNum = 0, input;
  // while (input! = 0){
  //  revNum = revNum * 10 + input % 10;
  // input = input ~/ 10 ;
}
   // return revNum;
  //}
