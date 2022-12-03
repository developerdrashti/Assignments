import 'package:flutter/material.dart';
import 'package:project6/images.dart';

class task15 extends StatefulWidget {
  const task15({super.key});

  @override
  State<task15> createState() => _task15State();
}

class _task15State extends State<task15> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            child: Image.asset("images/11.png"),
            margin: EdgeInsets.only(top: 30),
            height: 200,
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 60, right: 1),
            child: Text(
              "20k+premium recepies",
              style: TextStyle(
                  color: Color.fromARGB(255, 66, 64, 64),
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),          ),
          Container(
            child: Text(
              "make your own",
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 12, 12),
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              "delicious desserts",
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 12, 12),
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (((context) => page2()))));
                },
                child: Container(
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50, left: 300),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 210, 191),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                  ),
                  child: Text("GETS STARTED"),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Icon(
                Icons.line_style,
                color: Color.fromARGB(255, 19, 18, 18),
                size: 18,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "simply way to find",
                style: TextStyle(
                    color: Color.fromARGB(255, 11, 10, 10),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(
                "sweet recipes",
                style: TextStyle(
                    color: Color.fromARGB(255, 228, 76, 11),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
