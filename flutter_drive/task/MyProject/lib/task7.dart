import 'package:flutter/material.dart';

class task7 extends StatelessWidget {
  const task7({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("FLUTTER ROWS & COLUMN EXAMPLE ANS ASSIGNMENT"),
          ),
          body: Row(
            children: [
              Container(
                child: Column(children: [
                  Container(
                    color: Color.fromARGB(255, 3, 154, 86),
                    height: 60,
                    width: 110,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 30,
                          color: Color.fromARGB(255, 7, 143, 240),
                          margin: EdgeInsets.all(5),
                        ),
                        Container(
                          width: 70,
                          height: 50,
                          color: Colors.red,
                          margin: EdgeInsets.all(5),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 110,
                    color: Colors.pink,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    width: 110,
                    height: 150,
                    margin: EdgeInsets.all(5),
                    color: Color.fromARGB(255, 3, 79, 142),
                  ),
                ]),
              ),
              Container(
                child: Column(children: [
                  Container(
                    width: 130,
                    height: 300,
                    color: Colors.pink,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 110,
                          width: 60,
                          margin: EdgeInsets.all(5),
                          color: Color.fromARGB(255, 3, 154, 86),
                        ),
                        Container(
                          child: Column(children: [
                            Container(
                              width: 60,
                              height: 50,
                              color: Color.fromARGB(255, 111, 65, 197),
                              margin: EdgeInsets.all(5),
                            ),
                            Container(
                              height: 50,
                              width: 60,
                              color: Colors.red,
                              margin: EdgeInsets.all(5),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 130,
                    color: Color.fromARGB(255, 10, 217, 141),
                    margin: EdgeInsets.all(5),
                  ),
                ]),
              ),
              Container(
                child: Column(children: [
                  Container(
                    child: Row(children: [
                      Container(
                        height: 410,
                        width: 50,
                        color: Color.fromARGB(255, 13, 229, 96),
                        margin: EdgeInsets.all(5),
                      ),
                      Container(
                        child: Column(children: [
                          Container(
                            width: 60,
                            height: 150,
                            color: Colors.blue,
                            margin: EdgeInsets.all(5),
                          ),
                          Container(
                            width: 60,
                            height: 250,
                            color: Colors.redAccent,
                            margin: EdgeInsets.all(5),
                          ),
                        ]),
                      ),
                    ]),
                  ),
                  Container(
                    width: 120,
                    height: 170,
                    margin: EdgeInsets.all(5),
                    color: Color.fromARGB(255, 202, 6, 150),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
