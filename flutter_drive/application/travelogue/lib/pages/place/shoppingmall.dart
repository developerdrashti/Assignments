import 'package:flutter/material.dart';
import 'package:travelogue/TDI.dart';
import 'package:travelogue/citywalk.dart';
import 'package:travelogue/crossriver.dart';
import 'package:travelogue/metrowalk.dart';
import 'package:travelogue/pacific.dart';
import 'package:travelogue/thechankya.dart';

class webview8 extends StatefulWidget {
  const webview8({super.key});

  @override
  State<webview8> createState() => _webview8State();
}

class _webview8State extends State<webview8> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // backgroundColor: Color.fromARGB(255, 81, 165, 222),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => ciyuwalk()),
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
                          "assets/image/citywalk.jpg", fit: BoxFit.cover,
                          height: 150,
                          width: 180, //MediaQuery.of(context).size.width / 3,
                        ),
                      ),
                    ),
                    Text(
                      "CITYWALK MALL",
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
                    builder: ((context) => tdi()),
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
                          "assets/image/tdi.jpg",
                          fit: BoxFit.cover,
                          height: 160,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "TDI MALL ",
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
                    builder: ((context) => pacific()),
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
                          "assets/image/pacific.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "PACIFIC MALL",
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
                    builder: ((context) => crossriver()),
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
                          "assets/image/crossriver.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "CROSS RIVER MALL",
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
                    builder: ((context) => metrowalk1()),
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
                          "assets/image/metrowalk.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "METRO WALK MALL",
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
                    builder: ((context) => chankya()),
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
                          "assets/image/chnakya.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "THE CHANAKYA MALL ",
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
