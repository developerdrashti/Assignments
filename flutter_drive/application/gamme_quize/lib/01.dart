import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gamme_quize/02.dart';
import 'package:gamme_quize/Start_ganme.dart';

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
  void InitState() {
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => second(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("GAME")),
      backgroundColor: Color.fromARGB(255, 134, 159, 172),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            child: Visibility(
              visible: isLogoVisible,
              child: Image.network(
                "https://images.hindustantimes.com/img/2022/08/16/550x309/ANI-20220726002-0_1660643258920_1660643258920_1660643288243_1660643288243.jpg",
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
                  child: Text("RANBIR KAPOOR"),
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
              SizedBox(
                height: 30,
              ),
              Container(
                child: ElevatedButton(
                  child: Text("VIRAT KOHLI"),
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
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    child: ElevatedButton(
                      child: Text("ARJUN KAPOOR"),
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
              SizedBox(
                height: 30,
              ),
              Container(
                child: ElevatedButton(
                  child: Text("ALLU ARJUN"),
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
                  context, MaterialPageRoute(builder: ((context) => second())));
            },
            child: Text("Next"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
        ]),
      ),
    );
  }
}
