import 'dart:ui';

import 'package:flutter/material.dart';

class qutub_minar extends StatefulWidget {
  const qutub_minar({super.key});

  @override
  State<qutub_minar> createState() => _qutub_minarState();
}

class _qutub_minarState extends State<qutub_minar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "QUTUB_MINAR",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset("assets/image/qutub1.jpg"),
          ),
          Container(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "History",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueAccent),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "architecture",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueAccent),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "Accidents",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, right: 280),
            child: Text(
              "Qutub_minar:- ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "                    The Qutb Minar, also spelled Qutub Minar and Qutab Minar, is a minaret and victory tower that forms part of the Qutb complex, which lies at the site of Delhi’s oldest fortified city, Lal Kot, founded by the Tomar Rajputs.",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 14),
            child: Image.asset("assets/image/qutub_map.png"),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset("assets/image/qutub1.jpg"),
          ),
        ]),
      ),
    );
  }
}
