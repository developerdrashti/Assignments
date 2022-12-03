import 'package:flutter/material.dart';

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
