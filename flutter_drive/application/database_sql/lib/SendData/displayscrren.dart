import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class displayscrren extends StatelessWidget {
  var name;
  var email;

  displayscrren({required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 36),
          ),
          Text(
            email,
            style: TextStyle(fontSize: 36),
          )
        ],
      )),
    );
  }
}
