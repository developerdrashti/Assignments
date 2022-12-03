import 'package:database_sql/SendData/displayscrren.dart';
import 'package:flutter/material.dart';

class myinputscrren extends StatefulWidget {
  const myinputscrren({super.key});

  @override
  State<myinputscrren> createState() => _myinputscrrenState();
}

class _myinputscrrenState extends State<myinputscrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => displayscrren(
                            name: "drashti",
                            email: "vekariyadrashti8@gmail.com",
                          ))));
            },
            child: Text("send"))
      ]),
    );
  }
}
