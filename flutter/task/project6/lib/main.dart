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
              backgroundColor: Colors.lightGreen,
            ),
            body: Container(
              color: Color.fromARGB(235, 58, 172, 153),
              height: 456,
              width: double.maxFinite,
              margin: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Text("goreous"),
            )));
  }
}
