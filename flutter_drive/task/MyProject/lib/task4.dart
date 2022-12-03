import 'package:flutter/material.dart';

class task4 extends StatelessWidget {
  const task4({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("GRID VIEW"),
          ),
          body: Column(children: [
            Container(
              height: 120,
              width: double.maxFinite,
              margin: EdgeInsets.all(5),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.pinkAccent,
                  child: Column(children: [
                    Container(
                      color: Colors.lightGreen,
                      margin: EdgeInsets.all(30),
                      child: Icon(Icons.home, color: Colors.black, size: 20),
                    ),
                    Container(
                      child: Text("HOME"),
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  color: Color.fromARGB(255, 75, 209, 133),
                  child: Column(children: [
                    Container(
                      color: Color.fromARGB(255, 239, 145, 177),
                      margin: EdgeInsets.all(30),
                      child: Icon(Icons.email, color: Colors.black, size: 20),
                    ),
                    Container(child: Text("EMAIL")),
                  ]),
                ),
                Container(
                  color: Colors.pinkAccent,
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Container(
                      color: Colors.lightGreenAccent,
                      margin: EdgeInsets.all(30),
                      child: Icon(Icons.alarm, color: Colors.black, size: 20),
                    ),
                    Container(
                      child: Text("ALARM"),
                    ),
                  ]),
                ),
              ]),
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color.fromARGB(255, 75, 209, 133),
                    margin: EdgeInsets.all(5),
                    child: Column(children: [
                      Container(
                        color: Color.fromARGB(255, 239, 145, 177),
                        margin: EdgeInsets.all(30),
                        child:
                            Icon(Icons.wallet, color: Colors.black, size: 20),
                      ),
                      Container(
                        child: Text("WALLET"),
                      ),
                    ]),
                  ),
                  Container(
                    color: Colors.pinkAccent,
                    margin: EdgeInsets.all(5),
                    child: Column(children: [
                      Container(
                        color: Colors.lightGreen,
                        margin: EdgeInsets.all(30),
                        child:
                            Icon(Icons.backup, color: Colors.black, size: 20),
                      ),
                      Container(
                        child: Text("BACKUP"),
                      ),
                    ]),
                  ),
                  Container(
                    color: Color.fromARGB(255, 75, 209, 133),
                    margin: EdgeInsets.all(5),
                    child: Column(children: [
                      Container(
                        color: Color.fromARGB(255, 239, 145, 177),
                        margin: EdgeInsets.all(30),
                        child: Icon(Icons.book, color: Colors.black, size: 20),
                      ),
                      Container(
                        child: Text("BOOK"),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.pinkAccent,
                    margin: EdgeInsets.all(5),
                    child: Column(children: [
                      Container(
                        color: Colors.lightGreen,
                        margin: EdgeInsets.all(30),
                        child:
                            Icon(Icons.camera, color: Colors.black, size: 20),
                      ),
                      Container(
                        child: Text("CAMERA"),
                      ),
                    ]),
                  ),
                  Container(
                    color: Color.fromARGB(255, 75, 209, 133),
                    margin: EdgeInsets.all(5),
                    child: Column(children: [
                      Container(
                        color: Color.fromARGB(255, 239, 145, 177),
                        margin: EdgeInsets.all(30),
                        child:
                            Icon(Icons.person, color: Colors.black, size: 20),
                      ),
                      Container(
                        child: Text("PERSON"),
                      ),
                    ]),
                  ),
                  Container(
                    color: Colors.pinkAccent,
                    margin: EdgeInsets.all(5),
                    child: Column(children: [
                      Container(
                        color: Colors.lightGreen,
                        margin: EdgeInsets.all(30),
                        child: Icon(Icons.print, color: Colors.black, size: 20),
                      ),
                      Container(
                        child: Text("PRINT"),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: EdgeInsets.all(5),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  color: Color.fromARGB(255, 75, 209, 133),
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Container(
                      color: Color.fromARGB(255, 239, 145, 177),
                      margin: EdgeInsets.all(30),
                      child: Icon(Icons.phone, color: Colors.black, size: 20),
                    ),
                    Container(
                      child: Text("PHONE"),
                    ),
                  ]),
                ),
                Container(
                  color: Colors.pinkAccent,
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Container(
                      color: Colors.lightGreen,
                      margin: EdgeInsets.all(30),
                      child: Icon(Icons.notes, color: Colors.black, size: 20),
                    ),
                    Container(
                      child: Text("NOTES"),
                    ),
                  ]),
                ),
                Container(
                  color: Color.fromARGB(255, 75, 209, 133),
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Container(
                      color: Color.fromARGB(255, 239, 145, 177),
                      margin: EdgeInsets.all(30),
                      child:
                          Icon(Icons.music_note, color: Colors.black, size: 20),
                    ),
                    Container(
                      child: Text("MUSIC"),
                    ),
                  ]),
                ),
              ]),
            ),
          ]),
        ));
  }
}
