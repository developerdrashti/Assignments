import 'dart:ui';

import 'package:flutter/material.dart';

class myheaderlayout extends StatelessWidget {
  const myheaderlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.maxFinite,
      color: Colors.cyan,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Icon(
              Icons.person,
              size: 66,
              color: Color.fromARGB(255, 11, 12, 12),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("MYAPP",
              style: TextStyle(
                fontSize: 20,
              )),
          Text(
            "vekariyadrashti8@gmail.com",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
  
}

