//1. Create custom toolbar as per given below design Create toolbar with spinner and search
//functionality

import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SEARCHBAR"),
        ),
        body: Column(children: [
          
          Container(
            margin: EdgeInsets.all(25),
            child: TextFormField(
              // controller: _userPassword,
              decoration: InputDecoration(
                hintText: "search",
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 85, 141, 168),
                ),
                suffixIcon: IconButton(
                    onPressed: () {
                      // _userPassword.clear();
                    },
                    icon: const Icon(Icons.search)),
              ),
            ),
          ),
        ]));
  }
}
