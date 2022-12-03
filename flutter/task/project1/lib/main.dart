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
