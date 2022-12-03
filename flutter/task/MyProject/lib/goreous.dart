import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class goreous extends StatelessWidget {
  const goreous({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(235, 58, 172, 153),
      height: 456,
      width: double.maxFinite,
      margin: EdgeInsets.all(16),
      alignment: Alignment.center,
      child: Text("goreous"),
    ));
  }
}
