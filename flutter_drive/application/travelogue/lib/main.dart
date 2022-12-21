import 'package:flutter/material.dart';
import 'package:travelogue/education.dart';
import 'package:travelogue/first.dart';
import 'package:travelogue/homescreen/pages/history/history.dart';
import 'package:travelogue/homescreen/pages/travel/travels.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
