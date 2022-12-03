import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class yamuna extends StatefulWidget {
  const yamuna({super.key});

  @override
  State<yamuna> createState() => _yamunaState();
}

class _yamunaState extends State<yamuna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 70),
            child: Text(
              "YAMUNA RIVER",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Image.asset(
              "assets/image/yamuna.jpg",
              fit: BoxFit.fill,
              width: 430,
            ),
          ),
          Container(
            child: Text(
              "   The Yamuna (Hindustani: pronounced [jəmunaː]), also spelt Jumna, is the second-largest tributary river of the Ganges by discharge and the longest tributary in India.",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            child: Text(
              "MAP",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6),
            child: Image.asset(
              "assets/image/yamunamap.jpg",
              height: 300,
              width: 300,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: RatingBar.builder(
                initialRating: 1,
                minRating: 1,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 10),
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemBuilder: ((context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    )),
                onRatingUpdate: (value) {
                  print(value);
                },
              )),
          Container(
            margin: EdgeInsets.only(top: 9, right: 50),
            child: Text(
              "Palaeochannels: Sarasvati's tributary::",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     The present Sarsuti river which originates in the Shivalik hills in Himachal and Haryana border and merges with Ghaggar River near Pehowa is the palaeochannel of Yamuna.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, right: 260),
            child: Text(
              "Etymology::",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     The name Yamuna seems to be derived from the Sanskrit word yama, meaning 'twin', and it may have been applied to the river because it runs parallel to the Ganges.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/yamun.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          )
        ],
      ),
    ]));
  }
}
