import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class diggin extends StatefulWidget {
  const diggin({super.key});

  @override
  State<diggin> createState() => _digginState();
}

class _digginState extends State<diggin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 60),
          child: Text(
            "Diggin Cafe ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/image/di.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Shakes, hot drinks & a casual menu are served on a charming patio decked out with greenery.",
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
            " Santushti Shopping Complex Shop No-10 Opp Samrat Hotel, New Delhi, Delhi 110003",
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
            "assets/image/di1.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/image/di2.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/image/di3.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Service options: Dine-in · Takeaway · Delivery",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/image/di4.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
      ]),
    ]));
  }
}
