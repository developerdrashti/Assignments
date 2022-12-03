import 'dart:html';

import 'package:flutter/material.dart';

class task14 extends StatefulWidget {
  const task14({super.key});

  @override
  State<task14> createState() => _task14State();
}

class _task14State extends State<task14> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            child: Image.asset("images/b.png"),
            margin: EdgeInsets.only(top: 25),
            height: 200,
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 330),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.rectangle,
                    color: Colors.amber,
                    size: 18,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 241, 236, 218),
                    size: 18,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 241, 236, 218),
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              "Get all the healthy recepies that you need",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              "that you need",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "whether you are losing or gaining,",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "we have all the recepies you all need",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (((context) => page2()))));
                },
                child: Container(
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50, left: 300),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 210, 191),
                  ),
                  child: Icon(Icons.arrow_right_alt),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            child: Image.asset("images/r.png"),
            margin: EdgeInsets.only(top: 25),
            height: 200,
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 330),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 241, 236, 218),
                    size: 18,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.rectangle,
                    color: Colors.amber,
                    size: 18,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 241, 236, 218),
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              "get daily exact nutriition",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              "value of everything you eat",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "we are updating our food database every",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "minute to help you track your calories",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (((context) => page3()))));
                },
                child: Container(
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50, left: 300),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 210, 191),
                  ),
                  child: Icon(Icons.arrow_right_alt),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            child: Image.asset("assets/images/bhut.png"),
            margin: EdgeInsets.only(top: 25),
            height: 200,
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 330),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 241, 236, 218),
                    size: 18,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.rectangle,
                    color: Color.fromARGB(255, 241, 236, 218),
                    size: 18,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Colors.amber,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              "get daily calorie targets",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            child: Text(
              "based on your body weight",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 330),
            child: Text(
              "set your target weight and select  your",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "monthly schedule, and well do the rest",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (((context) => task14()))));
                },
                child: Container(
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50, left: 300),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 210, 191),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                  ),
                  child: Text("GETS STARTED"),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
