import 'dart:ui';

import 'package:flutter/material.dart';

class yogmaya extends StatefulWidget {
  const yogmaya({super.key});

  @override
  State<yogmaya> createState() => _yogmayaState();
}

class _yogmayaState extends State<yogmaya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 80),
            child: Text(
              "YOGMAYA MANDIR",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Image.asset(
              "assets/image/yogmaya1.jpg",
              fit: BoxFit.fill,
              width: 440,
              height: 200,
            ),
          ),
          Container(
            child: Text(
              "Entry into the temple precincts",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 50),
            child: Text(
              "RELIGION",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Affiliation",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ),
                    Container(
                      child: Text(
                        "hinduism",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    "Deity",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue),
                  ),
                ),
                Container(
                  child: Text(
                    "      Yogmaya",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 50),
            child: Text(
              "LOCATION",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "          Location",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 8, 9, 10)),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Mehrruali,new delhi",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(
                        "Country",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 9, 10, 10)),
                      ),
                    ),
                    Container(
                      child: Text(
                        "india",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset(
                  "assets/image/yogmayamap.png",
                  fit: BoxFit.fill,
                ),
                height: 200,
                width: 400,
              )
            ],
          ),
          Container(
            child: Text(
              "location in delhi",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Geographic",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 9, 10, 10)),
                  ),
                ),
                Container(
                  child: Text(
                    "28'31'30'n",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    "cordinates",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 9, 10, 10)),
                  ),
                ),
                Container(
                  child: Text(
                    "77'10'57'e",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
