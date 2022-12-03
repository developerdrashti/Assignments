import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class miabella extends StatefulWidget {
  const miabella({super.key});

  @override
  State<miabella> createState() => _miabellaState();
}

class _miabellaState extends State<miabella> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 60),
          child: Text(
            "Miabella place ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/image/m3.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Light-filled venue with outdoor seating dishing out eclectic European cuisine & cocktails.",
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
            " 50E 2nd Floor, Hauz Khas Fort Rd, Hauz Khas Village, Hauz Khas, New Delhi, Delhi 110016",
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
            "assets/image/m2.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/image/m1.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
      ]),
    ]));
  }
}
