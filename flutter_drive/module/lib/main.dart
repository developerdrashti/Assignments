import 'package:flutter/material.dart';
import 'package:module/eight.dart';
import 'package:module/fifth.dart';
import 'package:module/first.dart';
import 'package:module/four.dart';
import 'package:module/nine.dart';
import 'package:module/second.dart';
import 'package:module/seven.dart';
import 'package:module/third.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: nine(),
    );
  }
}
