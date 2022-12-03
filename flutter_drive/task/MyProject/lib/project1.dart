import 'package:flutter/material.dart';
import 'package:project6/images.dart';

// 1 to 8 task
class project1 extends StatefulWidget {
  const project1({super.key});

  @override
  State<project1> createState() => _projectState();
}

class _projectState extends State<project1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("task1"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => task1())));
                  },
                ),
              ),
              Container(
                child: Image.network(
                    "https://entrepreneurhandbook.co.uk/wp-content/uploads/2015/06/Online-business-idea-generation.jpg.webp"),
                height: 70,
                margin: EdgeInsets.only(bottom: 7),
                width: 200,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("task2"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => task2())));
                  },
                ),
              ),
              Container(
                child: Image.network(
                    "https://entrepreneurhandbook.co.uk/wp-content/uploads/2015/06/Online-business-idea-generation.jpg.webp"),
                height: 70,
                margin: EdgeInsets.only(bottom: 7),
                width: 200,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("task3"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => task3())));
                  },
                ),
              ),
              Container(
                child: Image.network(
                    "https://entrepreneurhandbook.co.uk/wp-content/uploads/2015/06/Online-business-idea-generation.jpg.webp"),
                margin: EdgeInsets.only(bottom: 7),
                height: 70,
                width: 200,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("task4"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => task4())));
                  },
                ),
              ),
              Container(
                child: Image.network(
                    "https://entrepreneurhandbook.co.uk/wp-content/uploads/2015/06/Online-business-idea-generation.jpg.webp"),
                margin: EdgeInsets.only(bottom: 7),
                height: 70,
                width: 200,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("task5"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => task5())));
                  },
                ),
              ),
              Container(
                child: Image.network(
                    "https://entrepreneurhandbook.co.uk/wp-content/uploads/2015/06/Online-business-idea-generation.jpg.webp"),
                margin: EdgeInsets.only(bottom: 7),
                height: 70,
                width: 200,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("task6"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => task6())));
                  },
                ),
              ),
              Container(
                child: Image.network(
                    "https://entrepreneurhandbook.co.uk/wp-content/uploads/2015/06/Online-business-idea-generation.jpg.webp"),
                margin: EdgeInsets.only(bottom: 7),
                height: 70,
                width: 200,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("task7"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => task7())));
                  },
                ),
              ),
              Container(
                child: Image.network(
                    "https://entrepreneurhandbook.co.uk/wp-content/uploads/2015/06/Online-business-idea-generation.jpg.webp"),
                margin: EdgeInsets.only(bottom: 7),
                height: 70,
                width: 200,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("task8"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => task8())));
                  },
                ),
              ),
              Container(
                child: Image.network(
                    "https://entrepreneurhandbook.co.uk/wp-content/uploads/2015/06/Online-business-idea-generation.jpg.webp"),
                margin: EdgeInsets.only(bottom: 7),
                height: 70,
                width: 200,
              ),
            ],
          ),
        ],
      )),
    );
  }
}

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

class task2 extends StatelessWidget {
  const task2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("grid list"),
            backgroundColor: Colors.purple,
          ),
          body: Container(
              child: Column(children: [
            Container(
              height: 120,
              width: double.maxFinite,
              margin: EdgeInsets.all(5),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.cyan,
                  child: Column(children: [
                    Container(
                      color: Colors.cyan,
                      margin: EdgeInsets.all(30),
                      child: Icon(
                        Icons.car_crash,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(
                      child: Text("CAR"),
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.cyan,
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Icon(
                        Icons.bike_scooter,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(
                      child: Text("BICYCLE"),
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.cyan,
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Icon(
                        Icons.ballot_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(child: Text("BOAT")),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.cyan,
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Icon(
                        Icons.bus_alert,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(
                      child: Text("BUS"),
                    ),
                  ]),
                ),
              ]),
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: EdgeInsets.all(5),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.cyan,
                  child: Column(children: [
                    Container(
                      color: Colors.cyan,
                      margin: EdgeInsets.all(30),
                      child: Icon(
                        Icons.train,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(
                      child: Text("TRAIN"),
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.cyan,
                  child: Column(children: [
                    Container(
                      color: Colors.cyan,
                      margin: EdgeInsets.all(30),
                      child: Icon(
                        Icons.directions_walk,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(
                      child: Text("WALK"),
                    ),
                  ]),
                ),
                Container(
                  color: Colors.cyan,
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Container(
                      color: Colors.cyan,
                      margin: EdgeInsets.all(30),
                      child: Icon(
                        Icons.area_chart_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(child: Text("ARRET")),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.cyan,
                  child: Column(children: [
                    Container(
                        color: Colors.cyan,
                        margin: EdgeInsets.all(30),
                        child: Icon(
                          Icons.broadcast_on_home_sharp,
                          color: Colors.black,
                          size: 20,
                        )),
                    Container(
                      child: Text("BROUILLOUS"),
                    ),
                  ]),
                ),
              ]),
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: EdgeInsets.all(5),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.cyan,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.cyan,
                          margin: EdgeInsets.all(30),
                          child: Icon(
                            Icons.dvr_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        Container(
                          child: Text("DVR"),
                        ),
                      ],
                    )),
                Container(
                    color: Colors.cyan,
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.cyan,
                          margin: EdgeInsets.all(30),
                          child: Icon(
                            Icons.copyright,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        Container(child: Text("COPYRIGHT")),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.cyan,
                  child: Column(children: [
                    Container(
                        color: Colors.cyan,
                        margin: EdgeInsets.all(30),
                        child: Icon(
                          Icons.no_luggage_outlined,
                          color: Colors.black,
                          size: 20,
                        )),
                    Container(child: Text("NUAGE")),
                  ]),
                ),
                Container(
                  color: Colors.cyan,
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Container(
                        color: Colors.cyan,
                        margin: EdgeInsets.all(30),
                        child: Icon(
                          Icons.alarm,
                          color: Colors.black,
                          size: 20,
                        )),
                    Container(child: Text("ALARM")),
                  ]),
                ),
              ]),
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: EdgeInsets.all(5),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.cyan,
                  child: Column(children: [
                    Container(
                      color: Colors.cyan,
                      margin: EdgeInsets.all(30),
                      child: Icon(
                        Icons.lock_clock,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(child: Text("CLOCK")),
                  ]),
                ),
                Container(
                    color: Colors.cyan,
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.cyan,
                          margin: EdgeInsets.all(30),
                          child: Icon(
                            Icons.turn_right,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        Container(child: Text("TRUE")),
                      ],
                    )),
                Container(
                  color: Colors.cyan,
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Container(
                      color: Colors.cyan,
                      margin: EdgeInsets.all(30),
                      child: Icon(
                        Icons.radio_button_checked,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(
                      child: Text("RBC"),
                    ),
                  ]),
                ),
                Container(
                  color: Colors.cyan,
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Container(
                      color: Colors.cyan,
                      margin: EdgeInsets.all(30),
                      child: Icon(
                        Icons.camera,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Container(child: Text("CAMERA")),
                  ]),
                ),
              ]),
            ),
          ])),
        ));
  }
}

class task3 extends StatelessWidget {
  const task3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightGreen,
                ),
                height: 160,
                width: 470,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                        height: 100,
                        width: 100,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey,
                        ),
                        height: 100,
                        width: 100,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightBlueAccent,
                        ),
                        height: 100,
                        width: 100,
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 160,
                width: 470,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow,
                ),
              ),
            ),
            Container(
              height: 160,
              width: 470,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue,
              ),
            ),
          ]),
        ),
      )),
    );
  }
}

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

class task5 extends StatelessWidget {
  const task5({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
            ]),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.message,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.message,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.message,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.message,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
            ]),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.rice_bowl_sharp,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.rice_bowl_sharp,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.rice_bowl_sharp,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.rice_bowl_sharp,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
            ]),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.thumb_up,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.thumb_up,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.thumb_up,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.thumb_up,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
            ]),
          ),
          Container(
            color: Colors.lightGreen,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.all(17),
                child: Text("filled"),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Text("outlined"),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Text("rounded"),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Text("sharp"),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class task6 extends StatelessWidget {
  const task6({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Color.fromARGB(255, 240, 183, 186),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.red,
                  size: 50,
                ),
              ),
              Container(
                child: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 5, 87, 124),
                  size: 50,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Color.fromARGB(255, 106, 207, 230),
                ),
              ),
              Container(
                child: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 159, 222, 10),
                  size: 50,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Color.fromARGB(255, 213, 228, 142),
                ),
              ),
              Container(
                child: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 245, 10, 183),
                  size: 50,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Color.fromARGB(255, 236, 110, 227),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Icon(
                      Icons.person,
                      color: Colors.red,
                      size: 50,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 224, 155, 155),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 8, 154, 227),
                      size: 50,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 147, 212, 244),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 173, 222, 11),
                      size: 50,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 205, 230, 170),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 229, 8, 174),
                      size: 50,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 237, 158, 233),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

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

class task8 extends StatelessWidget {
  const task8({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Row(children: [
          Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 227, 13, 13), width: 3)),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "*****",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 3)),
                  ),
                  Container(
                    child: Text("170 Reviews"),
                    margin: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 3)),
                  ),
                ],
              )),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 11, 173, 202), width: 3)),
            child: Column(children: [
              Container(
                child: Text(
                  "Strawberry pavlova",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 19, 19, 19), width: 3)),
              ),
              Container(
                child: Text(
                  "A pavlova is a meringue superb its  ",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                ),
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 19, 19, 19), width: 3)),
              ),
              Container(
                margin: EdgeInsets.only(top: 210),
                child: Row(children: [
                  Container(
                    child: Text(
                      "*****",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 3)),
                  ),
                  Container(
                    child: Text("170 Reviews"),
                    margin: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 3)),
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 220, 6, 6), width: 3)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 6),
                        child: Column(children: [
                          Container(
                            child: Icon(
                              Icons.present_to_all_sharp,
                              color: Color.fromARGB(255, 19, 17, 17),
                              size: 16,
                            ),
                          ),
                          Container(
                            child: Text("PREP"),
                          ),
                          Container(
                            child: Text("25 min"),
                          ),
                        ]),
                      ),
                      Container(
                        child: Column(children: [
                          Container(
                            child: Icon(
                              Icons.code_rounded,
                              color: Color.fromARGB(255, 13, 11, 12),
                              size: 16,
                            ),
                          ),
                          Container(
                            child: Text("CODEC"),
                          ),
                          Container(
                            child: Text("1 hr"),
                          ),
                        ]),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(children: [
                          Container(
                            child: Icon(
                              Icons.folder_off,
                              color: Color.fromARGB(255, 10, 10, 10),
                              size: 16,
                            ),
                          ),
                          Container(
                            child: Text("FFDC"),
                          ),
                          Container(
                            child: Text("4 hr"),
                          ),
                        ]),
                      ),
                    ]),
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(top: 300),
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(children: [
                          Container(
                            child: Icon(
                              Icons.present_to_all_sharp,
                              color: Color.fromARGB(255, 17, 15, 16),
                              size: 10,
                            ),
                          ),
                          Container(
                            child: Text(
                              "PREP",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 10),
                            ),
                          ),
                          Container(
                            child: Text(
                              "25 min",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 10),
                            ),
                          ),
                        ]),
                      ),
                    ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                    child: Column(children: [
                      Container(
                        child: Icon(
                          Icons.code_rounded,
                          color: Color.fromARGB(255, 8, 8, 8),
                          size: 10,
                        ),
                      ),
                      Container(
                        child: Text(
                          "CODEC",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 10),
                        ),
                      ),
                      Container(
                        child: Text(
                          "1 hr",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 10),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                    child: Column(children: [
                      Container(
                        child: Icon(
                          Icons.folder_off,
                          color: Color.fromARGB(255, 11, 11, 11),
                          size: 10,
                        ),
                      ),
                      Container(
                        child: Text(
                          "FFDC",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 10),
                        ),
                      ),
                      Container(
                        child: Text(
                          "4 hr",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 10),
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                margin: EdgeInsets.only(top: 30),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 26, 24, 24), width: 2)),
                    child: Icon(
                      Icons.home,
                      size: 40,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                    child: Text(
                      "PREP",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 225, 12, 12), width: 2)),
                    child: Text(
                      "25 min",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
