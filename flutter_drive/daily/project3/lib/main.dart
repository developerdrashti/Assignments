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
          title: Text("how are you"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Text(
          "hello welcome",
        )),
      ),
    );
  }
}
