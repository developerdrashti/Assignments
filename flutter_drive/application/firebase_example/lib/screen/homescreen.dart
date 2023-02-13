import 'dart:html';

import 'package:firebase_example/screen/register.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home Page"),
      ),
      body: Text("welcome to home page"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Logout(context);
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}
