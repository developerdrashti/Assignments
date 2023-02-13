import 'package:flutter/material.dart';

class stack extends StatefulWidget {
  const stack({super.key});

  @override
  State<stack> createState() => _stackState();
}

class _stackState extends State<stack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 400,
      width: 400,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            width: 500,
            height: 500,
            color: Colors.deepOrange,
          ),
          Container(
            margin: EdgeInsets.all(60),
            height: 300,
            width: 300,
            color: Colors.cyan,
          ),
          Container(
            margin: EdgeInsets.all(90),
            height: 200,
            width: 200,
            color: Color.fromARGB(255, 212, 0, 145),
          ),
        ],
      ),
    ));
  }
}
