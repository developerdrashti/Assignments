import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class tapi extends StatefulWidget {
  const tapi({super.key});

  @override
  State<tapi> createState() => _tapiState();
}

class _tapiState extends State<tapi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 60),
            child: Text(
              "TAPI RIVER",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Image.asset(
              "assets/image/tapi.jpg",
              fit: BoxFit.fill,
              width: 430,
            ),
          ),
          Container(
            child: Text(
              "   The Tapti River (or Tapi) is a river in central India located to the south of the Narmada river that flows westwards before draining into the Arabian Sea.",
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
              "assets/image/tapimap.png",
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
            margin: EdgeInsets.only(top: 9, right: 240),
            child: Text(
              "Etymology::",
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
            margin: EdgeInsets.only(top: 6, right: 260),
            child: Text(
              "Course::",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     The Tapti River rises in Multai, in Madhya Pradesh, and has a total length of around 724 km (450 mi).[7] It is the second largest west flowing river in India, after the Narmada River.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/tapi1.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/tapi2.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
        ],
      ),
    ]));
  }
}
