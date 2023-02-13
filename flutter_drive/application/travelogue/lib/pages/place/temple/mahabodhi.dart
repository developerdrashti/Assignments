import 'dart:ui';

import 'package:flutter/material.dart';

class mahabodhi extends StatefulWidget {
  const mahabodhi({super.key});

  @override
  State<mahabodhi> createState() => _mahabodhiState();
}

class _mahabodhiState extends State<mahabodhi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(
            "Mahabodhi Temple",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Image.asset(
            "assets/image/mahabodhi1.jpg",
            fit: BoxFit.fill,
          ),
          height: 250,
          width: 400,
        ),

        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "location",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    child: Text(
                      "bodha gaya,india",
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
                  "Area",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue),
                ),
              ),
              Container(
                child: Text(
                  "4.86.ha",
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
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset("assets/image/mahabodhimap.png"),
              height: 200,
              width: 300,
            )
          ]),
        ),
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Mahabodhi Tree",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Image.asset(
                  "assets/image/mahabodhitree.jpg",
                  fit: BoxFit.cover,
                  height: 150,
                  width: 300,
                ),
              )
            ],
          ),
        )

        //  margin: EdgeInsets.only(top: 5),
        // child: Image.asset(
        // "assets/image/mahabodhitree.jpg",
        //fit: BoxFit.cover,
        //),
      ]),
    );
  }
}
