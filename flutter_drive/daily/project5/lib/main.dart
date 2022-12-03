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
            title: Text("youtube"),
            backgroundColor: Colors.blue,
          ),
          body: Container(
            color: Color.fromARGB(199, 18, 218, 18),
            height: 200,
            width: double.maxFinite,
            //alignment: Alignment.center,
            alignment: Alignment.bottomCenter,
            //padding: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.all(8),
            //margin: EdgeInsets.symmetric(vertical: 23),
            //margin: EdgeInsets.symmetric(horizontal: 16),
            margin: EdgeInsets.only(top: 16, bottom: 20, left: 15, right: 60),
            child: Text("hello drashti"),
          )),
    );
  }
}
