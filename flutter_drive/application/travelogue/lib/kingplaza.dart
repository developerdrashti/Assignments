import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class kingplaza extends StatefulWidget {
  const kingplaza({super.key});

  @override
  State<kingplaza> createState() => _kingplazaState();
}

class _kingplazaState extends State<kingplaza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 70),
            child: Text(
              "king plaza",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Image.asset(
              "assets/image/kingplaza.jpeg",
              fit: BoxFit.fill,
              width: 430,
            ),
          ),
          Container(
            child: Text(
              "  hoose From a Wide Range of Properties Which Booking.com Offers. Search Now! Choose from a wide range of properties which Booking.com offers. Airport Taxi available. Villas. Secure Booking. Motels. ",
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
              "     A 208 Road 5, Street Number 9, Mahipalpur, New Delhi, Delhi 110037",
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
              "assets/image/king1.jpeg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/king2.jpeg",
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
              "   Located in New Delhi, within 12 km of Qutub Minar and 13 km of MG Road, Hotel King Plaza provides accommodation with a shared lounge and as well as free private parking for guests who drive. This 4-star hotel offers room service and an ATM. The accommodation features a 24-hour front desk, a shared kitchen and currency exchange for guests.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/king3.jpeg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/king4.jpeg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
        ],
      ),
    ]));
  }
}
