import 'package:flutter/material.dart';
import 'package:travelogue/akshardham.dart';
import 'package:travelogue/chhatarpur.dart';
import 'package:travelogue/history.dart';
import 'package:travelogue/kali.dart';
import 'package:travelogue/mahabodhi.dart';
import 'package:travelogue/qutub_minar.dart';
import 'package:travelogue/saibaba.dart';
import 'package:travelogue/shridigambar.dart';
import 'package:travelogue/yogmaya.dart';

class webview4 extends StatefulWidget {
  const webview4({super.key});

  @override
  State<webview4> createState() => _webview4State();
}

class _webview4State extends State<webview4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => akshardham()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/akshardham.png',
                            height: 105,
                          ),
                        ),
                      ),
                      Text(
                        "Akshardham",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => chhatarpur()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/Chhatarpur-Mandir.png',
                            height: 110,
                          ),
                        ),
                      ),
                      Text(
                        "chhatarpur-mandir",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                      builder: ((context) => qutub_minar()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/qutub_minar.png',
                            height: 105,
                            width: 200,
                          ),
                        ),
                      ),
                      Text(
                        "qutub_minar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => yogmaya()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/Yogmaya.png',
                            height: 105,
                          ),
                        ),
                      ),
                      Text(
                        "Yogmaya",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                      builder: ((context) => kali()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/kali.png',
                            height: 105,
                            width: 200,
                          ),
                        ),
                      ),
                      Text(
                        "kali bari",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => mahabodhi()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/Mahabodhi.png',
                            height: 105,
                          ),
                        ),
                      ),
                      Text(
                        "Mahabodhi",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                      builder: ((context) => saibaba()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/Sai-Baba.jpg',
                            height: 105,
                            width: 200,
                          ),
                        ),
                      ),
                      Text(
                        "Sai-Baba",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => shridigambar()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/Shri-Digambar.png',
                            height: 105,
                          ),
                        ),
                      ),
                      Text(
                        "Shri-Digambar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
