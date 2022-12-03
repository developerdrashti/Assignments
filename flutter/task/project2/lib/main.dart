import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
              backgroundColor: Colors.blueGrey,
            ),
            body: Container(
              color: Color.fromARGB(235, 31, 145, 126),
              height: 456,
              width: double.maxFinite,
              margin: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Text("goodwork"),
            )));
  }
}
