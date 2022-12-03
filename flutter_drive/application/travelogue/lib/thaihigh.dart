import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class thaihigh extends StatefulWidget {
  const thaihigh({super.key});

  @override
  State<thaihigh> createState() => _thaihighState();
}

class _thaihighState extends State<thaihigh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 60),
          child: Text(
            "Thai High",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/image/thaii.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Fairy lights & city views provide a romantic atmosphere for Thai cooking at this stylish spot.",
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
            "1091, 2nd Floor, Ambawatta Complex, 1, Kalka Das Marg, Mehrauli Village, Mehrauli, New Delhi, Delhi 110030",
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
            "assets/image/high.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/image/thai.jpg",
            fit: BoxFit.fill,
            width: 400,
          ),
        ),
      ]),
    ]));
  }
}
