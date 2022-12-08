//4. Write a code to display alert dialog with list of cities and Single choice selection display selected
//city in TextView

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_modual/q5.dart';

class fourth extends StatefulWidget {
  const fourth({Key? key}) : super(key: key);

  @override
  _q4State createState() => _q4State();
}

class _q4State extends State<fourth> {
  int number = 0;
  String msg = '';
  void increment() {
    number = number + 1;
  }

  void decrement() {
    number = number - 1;
  }
  String dropdownvalue = 'visavadar';

  //list
  var items = [
    'visavadar',
    'junagadh',
    'amreli',
    'bagasara',
    'ahmdabad',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("fourth model"),
        backgroundColor: Color.fromARGB(255, 76, 144, 175),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Select city:",
                    style: TextStyle(
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(255, 134, 240, 173),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                   onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                        print("$dropdownvalue");
                      });
                    },
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      msg = dropdownvalue;
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: const Text("Your have select"),
                          content: Text(
                            "$msg",
                            style: TextStyle(fontSize: 18),
                          ),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Back"))
                          ],
                        ),
                      );
                    });
                  },
                  child: Text("Show you have select")),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => homepage(),
                      ));
                },
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
    Container(
      child: Text(
        "WELCOME",
        style: TextStyle(
            backgroundColor: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 30),
      ),
    );
  }
}
