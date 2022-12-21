import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelogue/Properties.dart';
import 'package:travelogue/homescreen/pages/place/garden/garden.dart';
import 'package:travelogue/homescreen/pages/place/river.dart';
import 'package:travelogue/homescreen/pages/place/romanticplace.dart';
import 'package:travelogue/homescreen/pages/place/shoppingmall.dart';
import 'package:travelogue/homescreen/pages/place/temple.dart';
import 'package:getwidget/getwidget.dart';

class webview1 extends StatefulWidget {
  const webview1({super.key});

  @override
  State<webview1> createState() => _webview1State();
}

class _webview1State extends State<webview1> {
  var dhrupal = Properties();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: dhrupal.PlaceImages.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(25),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    child: Image.asset(
                      dhrupal.PlaceImages[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 1,
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height / 6.3,
                  ),
                  Column(
                    children: [
                      Text(
                        dhrupal.placeText[index],
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("uygtdvtybfgn"),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    dhrupal.NavigatorPlace[index]),
                          );
                        },
                        child: Text("explore"),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
      backgroundColor: Color.fromARGB(255, 173, 194, 192),
    );
  }
}
