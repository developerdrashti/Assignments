// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:project6/project1.dart';
import 'package:project6/task10.dart';
import 'package:project6/task11.dart';
import 'package:project6/task12.dart';
import 'package:project6/task13.dart';
import 'package:project6/task14.dart';
import 'package:project6/task9.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: task1(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("tops technology"),
              backgroundColor: Colors.indigo,
            ),
            body: Container(
              color: Color.fromARGB(235, 345, 453, 435),
              height: 456,
              width: double.maxFinite,
              margin: EdgeInsets.all(16),
              child: Text("my self drashti"),
            )));
  }
}
