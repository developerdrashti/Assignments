import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gamme_quize/03.dart';
import 'package:gamme_quize/Start_ganme.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _GameState();
}

class _GameState extends State<second> {
  bool isLogoVisible = true;
  TextEditingController myedit = TextEditingController();
  var tru = 0;
  var fls = 0;
  var totle = 0;
  String? result = "Ans";

  @override
  void InitState() {
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => third(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 134, 159, 172),
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
              "https://media.istockphoto.com/photos/qutub-minar-picture-id179542718?b=1&k=20&m=179542718&s=170667a&w=0&h=ySo9Zhaf17BLZ4Ep2lyMhT6NAYWPHxxPMTFb2XNHzBY=",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: ElevatedButton(
                child: Text("QUTUB_MINAR"),
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
                child: Text("LAL KILA"),
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
                    child: Text("AGRA"),
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
              ],
            ),
            Container(
              child: ElevatedButton(
                child: Text("TEMPLE"),
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
                context, MaterialPageRoute(builder: ((context) => third())));
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
