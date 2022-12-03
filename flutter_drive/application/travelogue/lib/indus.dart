import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class indus extends StatefulWidget {
  const indus({super.key});

  @override
  State<indus> createState() => _indusState();
}

class _indusState extends State<indus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 60),
            child: Text(
              "INDUS RIVER",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Image.asset(
              "assets/image/indus.jpg",
              fit: BoxFit.fill,
              width: 430,
            ),
          ),
          Container(
            child: Text(
              "   The river has a total drainage area of circa 1,120,000 km2 (430,000 sq mi).[3] Its estimated annual flow is around 243 km3 (58 cu mi), making it one of the 50 largest rivers in the world in terms of average annual flow.",
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
              "assets/image/indusmap.jpg",
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
              "     This river was known to the ancient Indians in Sanskrit as Sindhu and the Persians as Hindu which was regarded by both of them as the border river",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, right: 260),
            child: Text(
              "Description::",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     The Indus River provides key water resources for Pakistan's economy – especially the breadbasket of Punjab province, which accounts for most of the nation's agricultural production, and Sindh. ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/indus1.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/indus2.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
        ],
      ),
    ]));
  }
}
