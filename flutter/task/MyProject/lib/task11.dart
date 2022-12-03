import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project6/images.dart';

class task11 extends StatefulWidget {
  const task11({super.key});

  @override
  State<task11> createState() => _task11State();
}

class _task11State extends State<task11> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(),

            body: Column(children: [
              
              Container (
               
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Color.fromARGB(255, 66, 117, 194),
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "FIND RESTAURANT",
                  style: TextStyle(
                      color: Color.fromARGB(255, 25, 210, 191),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin:
                    EdgeInsets.only(bottom: 30, top: 30, left: 40, right: 40),
                child: Text(
                  "Dapatkan fhn sfgfu vbhg vhhv cu zegrrse hjgfty cg fhdd rnd hje ehjs edebfj sdie jddnjnf ffnbs dn rfu sryue hfb bduj.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 16, 16, 17),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Icon(
                        Icons.circle,
                        size: 10,
                        color: Color.fromARGB(255, 25, 210, 191),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Icon(
                        Icons.circle,
                        size: 10,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Icon(
                        Icons.circle,
                        size: 10,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (((context) => Page1()))));
                },
                child: Container(
                  height: 400,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHJEGnajs9Id-evp5J34eZAq4dynbZf8qpnQ&usqp=CAU",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ])));
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 30, left: 20),
            child: Text(
              "Skip",
              style: TextStyle(
                color: Color.fromARGB(255, 66, 117, 194),
                fontSize: 15,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 30),
            child: Text(
              "PICK THE BEST",
              style: TextStyle(
                  color: Color.fromARGB(255, 25, 210, 191),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 30, top: 30, left: 40, right: 40),
            child: Text(
              "Dapatkan fhn sfgfu vbhg vhhv cu zegrrse hjgfty cg fhdd rnd hje ehjs edebfj sdie jddnjnf ffnbs dn rfu sryue hfb bduj.",
              style: TextStyle(
                  color: Color.fromARGB(255, 16, 16, 17),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Icon(
                    Icons.circle,
                    size: 10,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Icon(
                    Icons.circle,
                    size: 10,
                    color: Color.fromARGB(255, 25, 210, 191),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Icon(
                    Icons.circle,
                    size: 10,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (((context) => Page2()))));
            },
            child: Container(
              height: 400,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 20),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkwzQRqF6EOkxgrzWYj8DdQFMOWEZSqNE4-A&usqp=CAU",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 30),
            child: Text(
              "CHOOSE YOUR MEAL ",
              style: TextStyle(
                  color: Color.fromARGB(255, 25, 210, 191),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 30, top: 30, left: 40, right: 40),
            child: Text(
              "Dapatkan fhn sfgfu vbhg vhhv cu zegrrse hjgfty cg fhdd rnd hje ehjs edebfj sdie jddnjnf ffnbs dn rfu sryue hfb bduj.",
              style: TextStyle(
                  color: Color.fromARGB(255, 16, 16, 17),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (((context) => task11()))));
            },
            child: Container(
              height: 50,
              width: 120,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 25, 210, 191),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
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
          Container(
            height: 400,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 20),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnbtC2BNgJleqNqR3qkTVqLF6mg29QO6i3Ug&usqp=CAU",
              height: 500,
              width: 350,
            ),
          ),
        ],
      ),
    );
  }
}
