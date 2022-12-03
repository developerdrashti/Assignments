import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game_image/02.dart';
import 'package:game_image/03.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _GameState();
}

class _GameState extends State<Second> {
  bool isLogoVisible = true;
  TextEditingController myedit = TextEditingController();
  var tru = 0;
  var fls = 0;
  var totle = 0;
  String? result = "Ans";

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      isLogoVisible = false;
      setState(() {});
    });

    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("GAME")),
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          child: Visibility(
            visible: isLogoVisible,
            child: Image.network(
              "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: ElevatedButton(
                child: Text("B M W"),
                onPressed: () {
                  tru = 10;
                  totle = (tru + totle);
                  setState(() {
                    result = "Wrong";
                  });
                  myedit.text = "";
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text("HONDA"),
                onPressed: () {
                  fls = -10;
                  totle = (fls + totle);
                  setState(() {
                    result = "Wrong";
                  });
                  myedit.text = "";
                },
              ),
            ),
            Row(
              children: [
                Container(
                  child: ElevatedButton(
                    child: Text("WOLKS WAGON"),
                    onPressed: () {
                      fls = -10;
                      totle = (fls + totle);
                      setState(() {
                        result = "Right";
                      });
                      myedit.text = "";
                    },
                  ),
                ),
              ],
            ),
            Container(
              child: ElevatedButton(
                child: Text("ROLLS ROYCE"),
                onPressed: () {
                  fls = -10;
                  totle = (fls + totle);
                  setState(() {
                    result = "Wrong";
                  });
                  myedit.text = "";
                },
              ),
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(color: Colors.red, fontSize: 38),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) =>First())));
          },
          child: Text("Next"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
        ),
      ]),
    );
  }
}
