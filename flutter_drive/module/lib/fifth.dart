import 'package:flutter/material.dart';

class fifth extends StatefulWidget {
  const fifth({super.key});

  @override
  State<fifth> createState() => _fifthState();
}

class _fifthState extends State<fifth> {
  double counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "$counter",
        style: TextStyle(fontSize: counter, color: Colors.orange),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            child: Icon(Icons.minimize_sharp),
          )
        ],
      ),
    );
  }
}
