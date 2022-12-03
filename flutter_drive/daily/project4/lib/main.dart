import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("facebook"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        color: Color.fromARGB(345, 567, 65, 87),
        height: 678,
        width: 345,
        //alignment: Alignment.center,
        //alignment: Alignment.bottomCenter,
        //alignment: Alignment.bottomLeft,
        //alignment: Alignment.bottomRight,
        alignment: Alignment.topLeft,
        //margin: EdgeInsets.symmetric(vertical: 56)
        //margin: EdgeInsets.only(bottom: 23),
        margin: EdgeInsets.all(45),

        child: Text("welcome to world"),
      ),
    ));
  }
}
