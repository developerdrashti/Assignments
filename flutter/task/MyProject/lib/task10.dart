import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class task10 extends StatefulWidget {
  const task10({super.key});

  @override
  State<task10> createState() => _task10State();
}

class _task10State extends State<task10> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(children: [
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                child: Icon(
                  Icons.wifi,
                  color: Colors.black,
                  size: 15,
                ),
              ),
              Container(
                  child: Icon(
                Icons.network_cell,
                color: Colors.black,
                size: 15,
              )),
              Container(
                  child: Icon(
                Icons.charging_station_outlined,
                color: Colors.black,
                size: 15,
              )),
              Container(
                child: Text(
                  "12:30",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "ALODOKTER",
              style: TextStyle(
                  color: Color.fromARGB(255, 8, 163, 229), fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "chat Dokter pillihan kami",
              style: TextStyle(
                  color: Color.fromARGB(255, 219, 15, 182), fontSize: 23),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Image.network(
                "https://www.google.com/imgres?imgurl=https%3A%2F%2Fis1-ssl.mzstatic.com%2Fimage%2Fthumb%2FPurple113%2Fv4%2Fab%2Fe8%2Fe0%2Fabe8e0a0-7871-4dc1-0a57-3f26e2e17bd2%2Fpr_source.jpg%2F300x0w.jpg&imgrefurl=https%3A%2F%2Fapps.apple.com%2Fin%2Fapp%2Falodokter-chat-bersama-dokter%2Fid1405482962&tbnid=UUTdHYFamS-VLM&vet=10CDAQMyjlAWoXChMI8LSXs83d-gIVAAAAAB0AAAAAEBw..i&docid=jZLhZz8sld7HBM&w=300&h=649&q=alodokter%20images&ved=0CDAQMyjlAWoXChMI8LSXs83d-gIVAAAAAB0AAAAAEBw"),
            height: 250,
            width: 300,
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              ("dapatkan jawaban akurat dari ratuasan"),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              ("dockter andel,gratis!"),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 150, top: 30),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.rectangle,
                      color: Colors.black,
                      size: 10,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 101, 99, 99),
                      size: 10,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 101, 99, 99),
                      size: 10,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 101, 99, 99),
                      size: 10,
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(left: 150, top: 30),
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SETANJUTNYA1())));
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 21, 210, 231)),
                  child: Text(
                    "Setanjutnya",
                    style: TextStyle(
                        color: Color.fromARGB(255, 15, 16, 16),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class SETANJUTNYA1 extends StatelessWidget {
  const SETANJUTNYA1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: Column(children: [
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  child: Icon(
                    Icons.wifi,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
                Container(
                    child: Icon(
                  Icons.network_cell,
                  color: Colors.black,
                  size: 15,
                )),
                Container(
                    child: Icon(
                  Icons.charging_station_outlined,
                  color: Colors.black,
                  size: 15,
                )),
                Container(
                  child: Text(
                    "12:30",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Text(
                "ALODOKTER",
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 163, 229), fontSize: 30),
              ),
            ),
            Container(
              child: Text(
                ("dockter andel,gratis!"),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Text(
                ("dapatkan jawaban akurat dari ratuasan"),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              child: Text(
                ("dockter andel,gratis!"),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 150, top: 30),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 101, 99, 99),
                        size: 10,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.rectangle,
                        color: Color.fromARGB(255, 5, 5, 5),
                        size: 10,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 101, 99, 99),
                        size: 10,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 101, 99, 99),
                        size: 10,
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 150, top: 30),
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SETANJUTNYA2())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 21, 210, 231)),
                    child: Text(
                      "Setanjutnya",
                      style: TextStyle(
                          color: Color.fromARGB(255, 15, 16, 16),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ));
  }
}

class SETANJUTNYA2 extends StatefulWidget {
  const SETANJUTNYA2({super.key});

  @override
  State<SETANJUTNYA2> createState() => _SETANJUTNYA2State();
}

class _SETANJUTNYA2State extends State<SETANJUTNYA2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: Column(children: [
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  child: Icon(
                    Icons.wifi,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
                Container(
                    child: Icon(
                  Icons.network_cell,
                  color: Colors.black,
                  size: 15,
                )),
                Container(
                    child: Icon(
                  Icons.charging_station_outlined,
                  color: Colors.black,
                  size: 15,
                )),
                Container(
                  child: Text(
                    "12:30",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Text(
                "ALODOKTER",
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 163, 229), fontSize: 30),
              ),
            ),
            Container(
              child: Text(
                ("dockter andel,gratis!"),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Text(
                ("dapatkan jawaban akurat dari ratuasan"),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              child: Text(
                ("dockter andel,gratis!"),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 150, top: 30),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 101, 99, 99),
                        size: 10,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 101, 99, 99),
                        size: 10,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.rectangle,
                        color: Color.fromARGB(255, 13, 13, 13),
                        size: 10,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 101, 99, 99),
                        size: 10,
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 150, top: 30),
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SETANJUTNYA2())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 21, 210, 231)),
                    child: Text(
                      "Setanjutnya",
                      style: TextStyle(
                          color: Color.fromARGB(255, 15, 16, 16),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ));
  }
}

class SETANJUTNYA3 extends StatefulWidget {
  const SETANJUTNYA3({super.key});

  @override
  State<SETANJUTNYA3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SETANJUTNYA3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  child: Icon(
                    Icons.wifi,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
                Container(
                    child: Icon(
                  Icons.network_cell,
                  color: Colors.black,
                  size: 15,
                )),
                Container(
                    child: Icon(
                  Icons.charging_station_outlined,
                  color: Colors.black,
                  size: 15,
                )),
                Container(
                  child: Text(
                    "12:30",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Text(
                "ALODOKTER",
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 163, 229), fontSize: 30),
              ),
            ),
            Container(
              child: Text(
                ("dockter andel,gratis!"),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Text(
                ("dapatkan jawaban akurat dari ratuasan"),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              child: Text(
                ("dockter andel,gratis!"),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 150, top: 30),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 101, 99, 99),
                      size: 10,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 101, 99, 99),
                      size: 10,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 101, 99, 99),
                      size: 10,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.rectangle,
                      color: Color.fromARGB(255, 12, 12, 12),
                      size: 10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 150, top: 30),
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SETANJUTNYA3())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 21, 210, 231)),
                    child: Text(
                      "Setanjutnya",
                      style: TextStyle(
                          color: Color.fromARGB(255, 15, 16, 16),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
