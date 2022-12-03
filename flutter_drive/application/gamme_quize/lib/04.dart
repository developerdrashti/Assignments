import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gamme_quize/01.dart';
import 'package:gamme_quize/02.dart';
import 'package:gamme_quize/Start_ganme.dart';

class fourth extends StatefulWidget {
  const fourth({super.key});

  @override
  State<fourth> createState() => _GameState();
}

class _GameState extends State<fourth> {
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
              child: Image.network(
                "https://cdn.luxatic.com/wp-content/uploads/2019/09/volkswagen.jpg ",
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
                child: Text("VALKSWAGEN"),
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
                child: Text("B.M.W"),
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
                    child: Text("TOYOTO"),
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
                child: Text("UNAR"),
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
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => First())));
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
