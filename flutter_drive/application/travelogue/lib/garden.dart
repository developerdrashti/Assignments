import 'package:flutter/material.dart';
import 'package:travelogue/buddha.dart';
import 'package:travelogue/lodhi.dart';
import 'package:travelogue/mughal.dart';
import 'package:travelogue/rose.dart';
import 'package:travelogue/talkatora.dart';
import 'package:travelogue/tulip.dart';

class webview7 extends StatefulWidget {
  const webview7({super.key});

  @override
  State<webview7> createState() => _webview7State();
}

class _webview7State extends State<webview7> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => lodhi()),
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
                          "assets/image/lodhi.jpg", fit: BoxFit.cover,
                          height: 150,
                          width: 180, //MediaQuery.of(context).size.width / 3,
                        ),
                      ),
                    ),
                    Text(
                      "LODHI",
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
                    builder: ((context) => mughal()),
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
                          "assets/image/mughal1.jpg",
                          fit: BoxFit.cover,
                          height: 160,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "MUGHAL ",
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
                    builder: ((context) => talkatora()),
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
                          "assets/image/talkotara.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "TALKATORA",
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
                    builder: ((context) => rose()),
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
                          "assets/image/rose.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "ROSE",
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
                    builder: ((context) => tulip()),
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
                          "assets/image/tulip.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "TULIP",
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
                    builder: ((context) => buddha()),
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
                          "assets/image/buddha.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "BUDDHA ",
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
