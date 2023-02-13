import 'package:flutter/material.dart';

Widget customwidget(String text) {
  return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
      alignment: Alignment.center,
      child: Text(
        "login",
        style: TextStyle(fontSize: 20),
      ));
}
