import 'package:flutter/material.dart';
import 'package:travelogue/Brahmaputra.dart';
import 'package:travelogue/ganges.dart';
import 'package:travelogue/indus.dart';
import 'package:travelogue/sahibi.dart';
import 'package:travelogue/tapi.dart';
import 'package:travelogue/yamuna.dart';

class webview6 extends StatefulWidget {
  const webview6({super.key});

  @override
  State<webview6> createState() => _webview6State();
}

class _webview6State extends State<webview6> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      //backgroundColor: Color.fromARGB(255, 81, 165, 222),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => yamuna()),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border
                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/yamuna.jpg", fit: BoxFit.cover,
                          height: 150,
                          width: 180, //MediaQuery.of(context).size.width / 3,
                        ),
                      ),
                    ),
                    Text(
                      "Yamuna",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => sahibi()),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border
                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/sahibi.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "Sahibi ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => tapi()),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 60, left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border
                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/tapi.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "Tapi",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => indus()),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 60, left: 20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border
                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/indus.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "Indus",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => ganges()),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 60, left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border
                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/gandes.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "Ganges",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Brahmaputra()),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 60, left: 20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border
                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/brahmaputra.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "Brahmaputra ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
