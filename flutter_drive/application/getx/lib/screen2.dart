import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/scrren1.dart';

class scrren2 extends StatefulWidget {
  const scrren2({super.key});

  @override
  State<scrren2> createState() => _scrren2State();
}

class _scrren2State extends State<scrren2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => scrren1()));
          Get.to(() => scrren2());
        },
        child: Center(
          child: Text(
            "scrren 2",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
