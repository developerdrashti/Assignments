import 'package:flutter/material.dart';
import 'package:project6/good_work.dart';
import 'package:project6/images.dart';
import 'package:project6/task2.dart';
import 'package:project6/task3.dart';
import 'package:project6/task5.dart';
import 'package:project6/task6.dart';
import 'package:project6/task7.dart';
import 'package:project6/task8.dart';

import 'task1.dart';
import 'task4.dart';

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
