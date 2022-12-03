import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Brahmaputra extends StatefulWidget {
  const Brahmaputra({super.key});

  @override
  State<Brahmaputra> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Brahmaputra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 60),
            child: Text(
              "Brahmaputra River",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Image.asset(
              "assets/image/brahmaputra.jpg",
              fit: BoxFit.fill,
              width: 430,
            ),
          ),
          Container(
            child: Text(
              "   The Brahmaputra (/ˌbrɑːməˈpuːtrə/),[3] also known as the Yarlung Tsangpo in Tibet, the Siang/Dihang River in Arunachal Pradesh, Luit in A",
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
              "assets/image/mapbra.jpg",
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
              "Names::",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     It is known by various names in different regional languages: Brôhmôputrô in Assamese; Tibetan: ཡར་ཀླུངས་གཙང་པོ་, Wylie: yar klung gtsang po Yarlung Tsangpo; simplified Chinese: 布拉马普特拉河; traditional Chinese: 布拉馬普特拉河; pinyin: Bùlāmǎpǔtèlā Hé. It is also called Tsangpo-Brahmaputra and red river of India (when referring to the whole river including the stretch within the Tibet Autonomous Region). ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 9, right: 150),
            child: Text(
              "Basin characteristics::",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "     The basin of the Brahmaputra river is 651 334  km2 and it is a good example of a braided river and meanders quite a bit and frequently forms temporary sand bars.  ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/bra1.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/bra2.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/image/bra3.jpg",
              fit: BoxFit.fill,
              width: 400,
            ),
          ),
        ],
      ),
    ]));
  }
}
