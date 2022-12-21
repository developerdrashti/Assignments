import 'package:flutter/material.dart';
import 'package:travelogue/castleblue.dart';
import 'package:travelogue/dcapitol.dart';
import 'package:travelogue/kingplaza.dart';
import 'package:travelogue/olivezone.dart';
import 'package:travelogue/tajpalace.dart';
import 'package:travelogue/vivapalace.dart';

class webview2 extends StatefulWidget {
  const webview2({super.key});

  @override
  State<webview2> createState() => _webview2State();
}

class _webview2State extends State<webview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => vivapalace()),
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
                          "assets/image/vivap.jpg", fit: BoxFit.cover,
                          height: 150,
                          width: 180, //MediaQuery.of(context).size.width / 3,
                        ),
                      ),
                    ),
                    Text(
                      "viva palace",
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
                    builder: ((context) => tajpalace()),
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
                          "assets/image/tajpalace.jpeg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "Taj palace ",
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
                    builder: ((context) => kingplaza()),
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
                          "assets/image/kingplaza.jpeg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "king plaza",
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
                    builder: ((context) => dcapitol()),
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
                          "assets/image/dcapitol.jpeg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "D' capitol",
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
                    builder: ((context) => castleblue()),
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
                          "assets/image/castle.jpeg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "Castle Blue",
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
                    builder: ((context) => olivezone()),
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
                          "assets/image/olive.jpeg",
                          fit: BoxFit.cover,
                          height: 150,
                          width: 180,
                        ),
                      ),
                    ),
                    Text(
                      "Olive Zone",
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
    );
  }
}
