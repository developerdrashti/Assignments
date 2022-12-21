import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class dcapitol extends StatefulWidget {
  const dcapitol({super.key});

  @override
  State<dcapitol> createState() => _dcapitolState();
}

class _dcapitolState extends State<dcapitol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 70),
            child: Text(
              "D' capitol",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Image.asset(
              "assets/image/dcapitol.jpeg",
              fit: BoxFit.fill,
              width: 430,
            ),
          ),
          Container(
            child: Text(
              "  Early check-in, Airport Transfer, Complimentary Food or Room Upgrade. Best Reward Program. Book From Best Hotels Brands on MMT. EMI Options, Bank Offers & Risk Free Cancellation. MySafety Assurance. 24*7 Customer Service. Best Deals Guaranteed.",
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
              "      Mahipalpur, Mata Chowk, Vasant Kunj Rd, Mahipalpur, New Delhi, Delhi 110037",
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
              "assets/image/d1.jpeg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/d2.jpeg",
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
              "assets/image/d3.jpeg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/d4.jpeg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
        ],
      ),
    ]));
  }
}
