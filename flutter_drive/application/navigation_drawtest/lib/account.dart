import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 151, 238, 159),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(39, 213, 5, 130),
            title: Text(
              "COMPANY VIEW",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 70),
            child: Column(children: [
              item(),
            ]),
          ),
        ));
  }

  Widget item() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Item1(),
          Item2(),
          Item3(),
        ],
      ),
    );
  }

  Widget Item1() {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(children: [
          Expanded(
              child: Icon(
            Icons.circle_notifications,
            size: 20,
            color: Colors.black,
          )),
          Expanded(
              flex: 3,
              child: Text(
                "TECHNOLOGY ID",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }

  Widget Item2() {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(children: [
          Expanded(
              child: Icon(
            Icons.circle_notifications,
            size: 20,
            color: Colors.black,
          )),
          Expanded(
              flex: 3,
              child: Text(
                "TECHNOLOGY NAME",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }

  Widget Item3() {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(children: [
          Expanded(
              child: Icon(
            Icons.circle_notifications,
            size: 20,
            color: Colors.black,
          )),
          Expanded(
              flex: 3,
              child: Text(
                "TECHNOLOGY PROFILE",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }
}
