import 'dart:ui';

import 'package:flutter/material.dart';

class chhatarpur extends StatefulWidget {
  const chhatarpur({super.key});

  @override
  State<chhatarpur> createState() => _chhatarpurState();
}

class _chhatarpurState extends State<chhatarpur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Image.asset("assets/image/inner_logo.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Chhatarpur Temple",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 2, 2, 2)),
              ),
            ),
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, left: 50),
              width: 300,
              child: Text(
                "  Chhatarpur Temple,   Delhi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  backgroundColor: Color.fromARGB(255, 137, 157, 168),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(children: [
            Container(
              child: Image.asset(
                "assets/image/330px-Chattarpur_Temple.jpg",
                fit: BoxFit.fill,
                width: 400,
              ),
            ),
          ]),
        ),
        Container(
          child: Column(children: [
            Container(
              child: Text(
                "A South Indian-style temple added in the complex.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            )
          ]),
        ),
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 140),
                width: 300,
                height: 50,
                child: Text(
                  "  Religion   ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    backgroundColor: Color.fromARGB(255, 137, 157, 168),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text(
                            "Affiliation",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.blue),
                          ),
                        ),
                        Container(
                          child: Text(
                            "hinduism",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(
                        "District",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ),
                    Container(
                      child: Text(
                        "south delhi",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(
                        "    Deity",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ),
                    Container(
                      child: Text(
                        "      katyayani (durga)",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 140),
                width: 300,
                height: 50,
                child: Text(
                  "  Location   ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    backgroundColor: Color.fromARGB(255, 137, 157, 168),
                  ),
                ),
              ),
              Container(
                child: Column(children: [
                  Container(
                    height: 130,
                    width: 400,
                    child: Image.asset(
                      "assets/image/map.png",
                      fit: BoxFit.fill,
                    ),
                  )
                ]),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
