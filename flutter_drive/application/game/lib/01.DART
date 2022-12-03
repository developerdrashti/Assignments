import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game_image/second_game.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _GameState();
}

class _GameState extends State<First> {
  bool isLogoVisible = true;
  TextEditingController myedit = TextEditingController();
  var tru = 0;
  var fls = 0;
  var totle = 0;
  String? result = "Ans";

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
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
              "https://i.guim.co.uk/img/media/fe1e34da640c5c56ed16f76ce6f994fa9343d09d/0_174_3408_2046/master/3408.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=0d3f33fb6aa6e0154b7713a00454c83d",
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
                child: Text("Dog"),
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
                child: Text("Cat"),
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
                    child: Text("Got"),
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
                child: Text("lion"),
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
                context, MaterialPageRoute(builder: ((context) => Second())));
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