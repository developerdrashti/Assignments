import 'package:flutter/material.dart';
import 'package:module3/fifth.dart';
import 'package:module3/first.dart';
import 'package:module3/fourth.dart';
import 'package:module3/nine.dart';
import 'package:module3/second.dart';
import 'package:module3/eight.dart';
import 'package:module3/six.dart';
import 'package:module3/ten.dart';
import 'package:module3/third.dart';
import 'package:module3/thirty.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ten(),
    );
  }
}
