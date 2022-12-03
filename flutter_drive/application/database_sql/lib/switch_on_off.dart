import 'dart:ui';

import 'package:flutter/material.dart';

class myswitchexample extends StatefulWidget {
  const myswitchexample({super.key});

  @override
  State<myswitchexample> createState() => _myswitchexampleState();
}

class _myswitchexampleState extends State<myswitchexample> {
  bool is_checked = false;
  var text_value = "switch is off";

  void Togglechecked(bool value) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("switch example"),
      ),
      body: Row(
        children: [
          Text(
            text_value,
            style: TextStyle(fontSize: 26),
          ),
          Switch(
            value: is_checked,
            onChanged: Togglechecked,
            activeColor: Colors.blueAccent,
            activeTrackColor: Colors.blue,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.black45,
          )
        ],
      ),
    );
  }
}
