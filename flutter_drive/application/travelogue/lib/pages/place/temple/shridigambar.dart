import 'dart:ui';

import 'package:flutter/material.dart';

class shridigambar extends StatefulWidget {
  const shridigambar({super.key});

  @override
  State<shridigambar> createState() => _shridigambarState();
}

class _shridigambarState extends State<shridigambar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, left: 100),
                child: Text(
                  "Shri Digambar mandir ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset("assets/image/shridigambarima.jpg"),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Digambar Jain Lal Mandir, Chandni Chowk, Delhi.",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "   LOCATION: ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Image.asset("assets/image/digambarmap.png"),
                width: 600,
              ),
              Container(
                child: Text(
                  "The Mughal Emperor Shah Jahan founded the old Delhi city. As is known from history, he built a walled city and resided in the Red Fort.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "How To Reach Sri Digambar Jain Lal Mandir",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  "The nearest metro station to the Digambar Jain temple is Chandni Chowk Metro, situated on the red line. The temple is just about 1.5 kms from the metro; you can hire a local or a battery run rickshaw. You can also choose to travel in the DTC state buses which ply regularly on this route.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset("assets/image/jain.jpg"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
