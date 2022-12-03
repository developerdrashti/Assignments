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
            title: Text("teligram"),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Text(
              "this is my first app",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 67,
                  backgroundColor: Colors.yellow),
            ),
          ),
        ));
  }
}
