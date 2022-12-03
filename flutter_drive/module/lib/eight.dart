//8. Write a program to show four images around Textview
import 'dart:collection';

import 'package:flutter/material.dart';
class eight extends StatefulWidget {
  const eight({super.key});

  @override
  State<eight> createState() => _eightState();
}

class _eightState extends State<eight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 250,
          width: double.maxFinite,
          child: Row(children: [
            Container(
              child: Image.network("https://images.unsplash.com/photo-1468327768560-75b778cbb551?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            ),Container(
              child: Image.network("https://images.unsplash.com/photo-1620748741969-c68debdd255e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
            )
          ]),
        ),Container(
          height: 30,
          alignment: Alignment.center,
          child: Text("IMAGES",style: TextStyle(fontSize: 30,color: Colors.orange),),
        ),
        Container(
          height: 250,
          
          child: Row(children: [
            Container(
              
              child: Image.network("https://plus.unsplash.com/premium_photo-1661844541352-3b97b83f3edb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=405&q=80"),
            ),
            Container(
              child: Image.network("https://images.unsplash.com/photo-1620625852956-6af595d8294a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80"),
            ),
          ]),
        ),
      ]),
    );
  }
}