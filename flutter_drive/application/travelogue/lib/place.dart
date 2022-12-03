import 'package:flutter/material.dart';
import 'package:travelogue/garden.dart';
import 'package:travelogue/river.dart';
import 'package:travelogue/romanticplace.dart';
import 'package:travelogue/shoppingmall.dart';
import 'package:travelogue/temple.dart';

class webview1 extends StatefulWidget {
  const webview1({super.key});

  @override
  State<webview1> createState() => _webview1State();
}

class _webview1State extends State<webview1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 194, 192),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(2),
          child: Image.asset(
            "assets/image/temple.jpg",
          ),
          height: 110,
          width: 900,
        ),
        Container(
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => webview4()),
              );
            },
            child: const Text(
              'temple',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(2),
          child: Image.asset(
            "assets/image/romantic.webp",
          ),
          height: 110,
          width: 900,
        ),
        Container(
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => webview5()),
              );
            },
            child: const Text(
              'romantic_place',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: Image.asset("assets/image/river.jpg"),
          height: 110,
          width: 900,
        ),
        Container(
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => webview6()),
              );
            },
            child: const Text(
              'river',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: Image.asset("assets/image/garden1.jpg"),
          height: 110,
          width: 900,
        ),
        Container(
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => webview7()),
              );
            },
            child: const Text(
              'garden',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: Image.asset("assets/image/shopping.jpg"),
          height: 110,
          width: 1000,
        ),
        Container(
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => webview8()),
              );
            },
            child: const Text(
              'shopping mall',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
