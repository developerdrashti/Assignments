import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class good_work extends StatelessWidget {
  const good_work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(235, 31, 145, 126),
      height: 456,
      width: double.maxFinite,
      margin: EdgeInsets.all(16),
      alignment: Alignment.center,
      child: Text("goodwork"),
    ));
  }
}
