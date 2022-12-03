import 'package:flutter/material.dart';

class fourth extends StatefulWidget {
  const fourth({super.key});

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (((context) => Screen1()))));
        },
        child: Container(
            alignment: Alignment.center,
            child: Text(
              "click me",
            )),
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (((context) => fourth()))));
        },
        child: Container(
            alignment: Alignment.center,
            child: Text(
              "click me",
            )),
      ),
    );
  }
}
