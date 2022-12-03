import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class task9 extends StatefulWidget {
  const task9({super.key});

  @override
  State<task9> createState() => _task9State();
}

class _task9State extends State<task9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Food Express",
            style: TextStyle(
                color: Color.fromARGB(255, 12, 222, 72),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          color: Color.fromARGB(255, 228, 35, 105),
        ),
        Container(
          child: Image.network(
              "https://myvistage.com/hub/wp-content/uploads/sites/4/2018/11/Business-Strategy-Blog-1024-686.jpg"),
          height: 350,
          width: 330,
        ),
        Container(
          child: Text(
            "Delivery to your home",
            style: TextStyle(
                color: Color.fromARGB(255, 8, 8, 8),
                fontSize: 25,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Lorem ipsum is simply dummy text of the printing.",
            style: TextStyle(
                color: Color.fromARGB(255, 12, 15, 15),
                fontSize: 15,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 150, top: 30),
          child: Center(
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                  child: Icon(
                Icons.circle,
                color: Color.fromARGB(255, 43, 44, 44),
                size: 30,
              )),
              Container(
                  child: Icon(
                Icons.rectangle,
                color: Color.fromARGB(255, 43, 44, 44),
                size: 30,
              )),
              Container(
                  child: Icon(
                Icons.circle,
                color: Color.fromARGB(255, 43, 44, 44),
                size: 30,
              )),
            ]),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 166, 209, 214)),
              child: Text(
                "SKIP",
                style: TextStyle(
                    color: Color.fromARGB(255, 15, 16, 16),
                    fontSize: 30,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => foodexpress())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 21, 210, 231)),
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                          color: Color.fromARGB(255, 15, 16, 16),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ]),
    );
  }
}

class foodexpress extends StatefulWidget {
  const foodexpress({super.key});

  @override
  State<foodexpress> createState() => _foodexpressState();
}

class _foodexpressState extends State<foodexpress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Food Express",
            style: TextStyle(
                color: Color.fromARGB(255, 12, 222, 72),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          color: Color.fromARGB(255, 228, 35, 105),
        ),
        Container(
          child: Image.network(
              "https://images.pexels.com/photos/3183197/pexels-photo-3183197.jpeg?cs=srgb&dl=pexels-fauxels-3183197.jpg&fm=jpg"),
          height: 350,
          width: 330,
        ),
        Container(
          child: Text(
            "Prepared by experts",
            style: TextStyle(
                color: Color.fromARGB(255, 8, 8, 8),
                fontSize: 25,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Lorem ipsum is simply dummy text of the printing.",
            style: TextStyle(
                color: Color.fromARGB(255, 12, 15, 15),
                fontSize: 15,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 150, top: 50),
          child: Row(children: [
            Container(
                child: Icon(
              Icons.rectangle,
              color: Color.fromARGB(255, 43, 44, 44),
              size: 30,
            )),
            Container(
                child: Icon(
              Icons.circle,
              color: Color.fromARGB(255, 43, 44, 44),
              size: 30,
            )),
            Container(
                child: Icon(
              Icons.circle,
              color: Color.fromARGB(255, 43, 44, 44),
              size: 30,
            )),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 166, 209, 214)),
              child: Text(
                "SKIP",
                style: TextStyle(
                    color: Color.fromARGB(255, 15, 16, 16),
                    fontSize: 30,
                    fontWeight: FontWeight.normal),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => foodexpress1())));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 21, 210, 231)),
                child: Text(
                  "NEXT",
                  style: TextStyle(
                      color: Color.fromARGB(255, 15, 16, 16),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

class foodexpress1 extends StatefulWidget {
  const foodexpress1({super.key});

  @override
  State<foodexpress1> createState() => _foodexepress1State();
}

class _foodexepress1State extends State<foodexpress1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Food Express",
            style: TextStyle(
                color: Color.fromARGB(255, 12, 222, 72),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          color: Color.fromARGB(255, 228, 35, 105),
        ),
        Container(
          child: Image.network(
              "https://www.northeastern.edu/graduate/blog/wp-content/uploads/2019/05/BusinessAnalyst_NortheasternGraduateBlog_HeroImage-1.jpeg"),
          height: 350,
          width: 330,
        ),
        Container(
          child: Text(
            "Prepared by experts",
            style: TextStyle(
                color: Color.fromARGB(255, 8, 8, 8),
                fontSize: 25,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Lorem ipsum is simply dummy text of the printing.",
            style: TextStyle(
                color: Color.fromARGB(255, 12, 15, 15),
                fontSize: 15,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 150, top: 20),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                child: Icon(
              Icons.circle,
              color: Color.fromARGB(255, 43, 44, 44),
              size: 25,
            )),
            Container(
                child: Icon(
              Icons.circle,
              color: Color.fromARGB(255, 43, 44, 44),
              size: 25,
            )),
            Container(
              child: Icon(
                Icons.rectangle,
                color: Color.fromARGB(255, 43, 44, 44),
                size: 25,
              ),
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 21, 210, 231)),
          child: Text(
            "LETS GO",
            style: TextStyle(
                color: Color.fromARGB(255, 15, 16, 16),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
