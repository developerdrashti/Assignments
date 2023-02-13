import 'dart:ui';

import 'package:flutter/material.dart';

class saibaba extends StatefulWidget {
  const saibaba({super.key});

  @override
  State<saibaba> createState() => _saibabaState();
}

class _saibabaState extends State<saibaba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 100),
            child: Text(
              "Saibaba Temple",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
            ),
          ),
          Container(
            child: Column(children: [
              Container(
                child: Image.asset("assets/image/Sai-Baba.jpg"),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Sai Baba temple is one of the oldest and prominent temples of Delhi.  Sai Baba temple is located on Lodhi road, Delhi near Jawahar Lal Nehru stadium. The temple is built in modern style.",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(children: [
                        Container(
                          child: Text(
                            "   ADDRESS: ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "      17, Lodhi Rd, Gokalpuri, Institutional Area, Lodi Colony, New Delhi, Delhi 110003",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Image.asset("assets/image/Sai-Baba.jpg"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
