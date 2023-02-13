import 'dart:ui';

import 'package:flutter/material.dart';

class kali extends StatefulWidget {
  const kali({super.key});

  @override
  State<kali> createState() => _kaliState();
}

class _kaliState extends State<kali> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Text(
                    "kali bari temple",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset("assets/image/kalibari.jpg"),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "          New Delhi Kali Bari is a Hindu temple dedicated to Goddess Kali and the center for Bengali culture in New Delhi, India.",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 320),
            child: Text(
              "history:-",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            child: Image.asset(
              "assets/image/kali1.jpg",
              fit: BoxFit.fill,
              height: 100,
              width: 300,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                  "         After several years of demands by the burgeoning expatriate Bengali population, one acre of land was allotted on the new Mandir Marg (temple road), next to the Laxminarayan Temple.")),
          Container(
            margin: EdgeInsets.only(top: 20, right: 320),
            child: Text(
              "location:-",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Image.asset("assets/image/kalimap.jpg"),
            //width: 200,
            //height: 100,
          )
        ]),
      ),
    );
  }
}
