import 'dart:ffi';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class sevilla extends StatefulWidget {
  const sevilla({super.key});

  @override
  State<sevilla> createState() => _sevillaState();
}

class _sevillaState extends State<sevilla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(children: [
        Container(
          margin: EdgeInsets.only(top: 50, left: 60),
          child: Text(
            "SEVILLA PLACE",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/image/sevilla.jpeg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Chic Spanish-themed hotel restaurant with alfresco tables & a Southern Europe & Moroccan menu.",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Address",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
        ),
        Container(
          child: Text(
            "The Claridges, 12, Dr APJ Abdul Kalam Rd, Tees January Road Area, Motilal Nehru Marg Area, New Delhi, Delhi 110011",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
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
          margin: EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/image/sev.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/image/sevi.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        )
      ]),
    ]));
  }
}
