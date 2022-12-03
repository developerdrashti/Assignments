import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nav_drawer_example/main_header.dart';

class MyDrawerMainFile extends StatefulWidget {
  const MyDrawerMainFile({super.key});

  @override
  State<MyDrawerMainFile> createState() => _MyWidgetState();
}

enum Drawersections { home, setting, profile }

var maincontainer;
var current_page = Drawersections.home;

class _MyWidgetState extends State<MyDrawerMainFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("drawer example")),
      body: maincontainer,
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Column(
          children: [myheaderlayout(), MainMenuList()],
        )),
      ),
    );
  }

  Widget MainMenuList() {
    return Container(
      child: Column(
        children: [
          myMenuitems(1, "home", Icons.home, true),
        ],
      ),
    );
  }

  Widget myMenuitems(int id, String title, IconData iconname, bool isselected) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(iconname, color: Colors.teal),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
