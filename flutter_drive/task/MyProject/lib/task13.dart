import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project6/images.dart';

class task13 extends StatefulWidget {
  const task13({super.key});

  @override
  State<task13> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<task13> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Image.asset("images/s.png"),
            height: 200,
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "Explore",
              style: TextStyle(
                  color: Color.fromARGB(255, 8, 8, 8),
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "Remaining essintially unchanged",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "it was popularized in the letterset",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "sheets contains",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 330),
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
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (((context) => next1()))));
                },
                child: Container(
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50, left: 550),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 210, 191),
                  ),
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                      color: Color.fromARGB(255, 236, 238, 241),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class next1 extends StatefulWidget {
  const next1({super.key});

  @override
  State<next1> createState() => _next1State();
}

class _next1State extends State<next1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Image.asset("images/v.png"),
            height: 200,
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "BOOK",
              style: TextStyle(
                  color: Color.fromARGB(255, 8, 8, 8),
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "Remaining essintially unchanged",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "it was popularized in the letterset",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "sheets contains",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 330),
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
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (((context) => next2()))));
                },
                child: Container(
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50, left: 550),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 210, 191),
                  ),
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                      color: Color.fromARGB(255, 236, 238, 241),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class next2 extends StatefulWidget {
  const next2({super.key});

  @override
  State<next2> createState() => _next2State();
}

class _next2State extends State<next2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Image.asset("images/vd1.png"),
            height: 200,
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "ENJOY",
              style: TextStyle(
                  color: Color.fromARGB(255, 8, 8, 8),
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "A southern inspired recepie that is",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "sure to add a little fun to your",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "dinner table",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 330),
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
              ],
            ),
          ),
          Container(
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (((context) => task13()))));
                },
                child: Container(
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50, left: 300),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 210, 191),
                  ),
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                      color: Color.fromARGB(255, 236, 238, 241),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
