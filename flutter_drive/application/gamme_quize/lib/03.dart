import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gamme_quize/02.dart';
import 'package:gamme_quize/04.dart';
import 'package:gamme_quize/Start_ganme.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _GameState();
}

class _GameState extends State<third> {
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
      backgroundColor: Color.fromARGB(255, 134, 159, 172),
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          child: Visibility(
              visible: isLogoVisible,
              child: Text(
                "What game studio makes the Red Dead Redemption series? ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              )),
        ),
        SizedBox(
          height: 70,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: ElevatedButton(
                child: Text("ROCKSTAR GAMES"),
                onPressed: () {
                  tru = 10;
                  totle = (tru + totle);
                  setState(() {
                    result = "Right";
                  });
                  myedit.text = "";
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text("LYNCH"),
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
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    child: Text("BENDER"),
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
                child: Text("MAD DOG"),
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(color: Colors.red, fontSize: 38),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => fourth())));
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
