import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class sorrento extends StatefulWidget {
  const sorrento({super.key});

  @override
  State<sorrento> createState() => _sorrentoState();
}

class _sorrentoState extends State<sorrento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 60),
          child: Text(
            "Sorrento Place ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/image/le.jpg",
            fit: BoxFit.cover,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "High-end hotel's refined Italian restaurant with a wood-fired oven & white wall tiling.",
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
          margin: EdgeInsets.only(top: 10),
          child: Text(
            " Lobby Level Shangri-La Eros New Delhi, 19, Ashoka Rd, Connaught Place, New Delhi, Delhi 110001",
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
            "assets/image/m1.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/image/m2.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          child: Text(
            "Reservation: shangri-la.com, dineout.co.in, eazydiner.com",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    ]));
  }
}
