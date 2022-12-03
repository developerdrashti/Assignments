import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class sahibi extends StatefulWidget {
  const sahibi({super.key});

  @override
  State<sahibi> createState() => _sahibiState();
}

class _sahibiState extends State<sahibi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 70),
            child: Text(
              "SAHIBI RIVER",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Image.asset(
              "assets/image/sahibi.jpg",
              fit: BoxFit.fill,
              width: 430,
            ),
          ),
          Container(
            child: Text(
              "   The Sahibi river, also called the Sabi River, is an ephemeral, rain-fed river flowing through Rajasthan, Haryana (where its canalised portion is called the Outfall Drain No 8) and Delhi states in India",
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
            margin: EdgeInsets.only(top: 9, right: 220),
            child: Text(
              "Geography::",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     The Sahibi River originates from the eastern slopes of the Saiwar Protected Forest hills in Aravalli Range near Jitgarh and Manoharpur in Sikar district of Rajasthan state. After covering about 157 km distance in the Rajasthan state. After gathering volume from a hundred tributaries, the Sahibi River forms a broad stream around Alwar and Kotputli.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, right: 200),
            child: Text(
              "Catchment area::",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     The catchment area of the Sahibi River encompasses the following cities and towns: Sikar, Jaipur, and Alwar in northeastern Rajasthan state; Bawal, Rewari, Pataudi, and Jhajjar district in southern Haryana state; and Delhi state.",
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
              "assets/image/yamun.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
        ],
      ),
    ]));
  }
}
