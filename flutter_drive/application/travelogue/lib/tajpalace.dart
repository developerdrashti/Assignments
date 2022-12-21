import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class tajpalace extends StatefulWidget {
  const tajpalace({super.key});

  @override
  State<tajpalace> createState() => _tajpalaceState();
}

class _tajpalaceState extends State<tajpalace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 70),
            child: Text(
              "TAJPALACE",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Image.asset(
              "assets/image/tajpalace.jpeg",
              fit: BoxFit.fill,
              width: 430,
            ),
          ),
          Container(
            child: Text(
              "  The luxurious Taj Palace, New Delhi, is spread out over six acres of lush gardens in the heart of India's capital city. Our 5 star hotel in Chanakyapuri, .",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/tajpalace.jpeg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 6,
            ),
            child: Text(
              "Address",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     Taj Palace, 2, Sardar Patel Marg, Diplomatic Enclave, Chanakyapuri, New Delhi, Delhi 110021",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
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
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/taj1.jpeg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/taj2.jpeg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 6,
            ),
            child: Text(
              "Hotel details",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "   Set on over 2 hectares of gardens, this posh hotel is 6 km from the Lodhi Garden and 12 km from the 17th-century fortress, Red Fort.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/taj4.jpeg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/taj.JPEG",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
        ],
      ),
    ]));
  }
}
