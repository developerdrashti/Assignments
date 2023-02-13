import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:getx/screen2.dart';

class scrren1 extends StatefulWidget {
  const scrren1({super.key});

  @override
  State<scrren1> createState() => _scrren1State();
}

class _scrren1State extends State<scrren1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => scrren2()));
          Get.to(() => scrren2());
        },
        child: Center(
          child: Text(
            "screen 1",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("snackbar", "getx example",
              snackPosition: SnackPosition.BOTTOM,
              margin: EdgeInsets.all(6),
              backgroundColor: Colors.deepPurple);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
