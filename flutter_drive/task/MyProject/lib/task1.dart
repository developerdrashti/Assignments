import 'package:flutter/material.dart';

class task1 extends StatelessWidget {
  const task1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.maxFinite,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Carrier"),
                                  ),
                                  Container(
                                    width: 15,
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.only(right: 5, left: 5),
                                    child: Icon(
                                      Icons.wifi,
                                      size: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Text("1:27 PM"),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(left: 367),
                                    child: Icon(Icons.battery_full_sharp),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Text(
                                "Row / Col",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 110, right: 105),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("Layout"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_left,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text("Row"),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right_alt,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("Main Axis Alignment"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          //alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.arrow_left,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text("Space Around"),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right_alt,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 110, right: 70),
                              //alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("Main Axis Size"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_left_sharp,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text("Row"),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right_alt,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("Cross Axis Alignment"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_left,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text("Stretch"),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right_alt,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 410,
                  width: double.maxFinite,
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              topLeft: Radius.circular(100)),
                        ),
                        child: Icon(
                          Icons.star,
                          size: 35,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              topLeft: Radius.circular(100)),
                        ),
                        child: Icon(
                          Icons.star,
                          size: 65,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              topLeft: Radius.circular(100)),
                        ),
                        child: Icon(
                          Icons.star,
                          size: 35,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
