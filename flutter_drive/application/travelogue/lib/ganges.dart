import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ganges extends StatefulWidget {
  const ganges({super.key});

  @override
  State<ganges> createState() => _indoriState();
}

class _indoriState extends State<ganges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 60),
            child: Text(
              "GANGES RIVER",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Image.asset(
              "assets/image/gandes.jpg",
              fit: BoxFit.fill,
              width: 430,
            ),
          ),
          Container(
            child: Text(
              "   Ganges River, Hindi Ganga, great river of the plains of the northern Indian subcontinent. ",
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
              "assets/image/gandesmap.jpg",
              fit: BoxFit.fill,
              width: 400,
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
            margin: EdgeInsets.only(top: 9, right: 280),
            child: Text(
              "Geology::",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     The Indian subcontinent lies atop the Indian tectonic plate, a minor plate within the Indo-Australian Plate.[32] Its defining geological processes commenced seventy-five million years ago, ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, right: 260),
            child: Text(
              "Hydrology::",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     Major left-bank tributaries include the Gomti River, Ghaghara River, Gandaki River and Kosi River; major right-bank tributaries include the Yamuna River, Son River, Punpun and Damodar. ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/ganges1.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/ganges2.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, right: 240),
            child: Text(
              "Physiography::",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     The Ganges rises in the southern Great Himalayas on the Indian side of the border with the Tibet Autonomous Region of China. ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    ]));
  }
}
