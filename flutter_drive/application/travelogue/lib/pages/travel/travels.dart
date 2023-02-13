import 'package:flutter/material.dart';
import 'package:travelogue/businesstravel.dart';
import 'package:travelogue/corporatetravel.dart';
import 'package:travelogue/globaltravel.dart';
import 'package:travelogue/internationaltravel.dart';

class Traveling extends StatefulWidget {
  const Traveling({super.key});

  @override
  State<Traveling> createState() => _TravelingState();
}

class _TravelingState extends State<Traveling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        margin: EdgeInsets.only(top: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => international(),
                    //     ));
                  },
                  child: Container(
                    width: 155,
                    height: 250,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/image/international.jpeg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  " International travel ",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Color.fromARGB(255, 1, 13, 107),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => business(),
                    //     ));
                  },
                  child: Container(
                    //color: Colors.greenAccent,
                    width: 155,
                    height: 250,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      //color: Color.fromARGB(255, 221, 248, 221),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/image/business.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  "Business travel",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Color.fromARGB(255, 1, 13, 107),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => corporate(),
                    //     ));
                  },
                  child: Container(
                    width: 155,
                    height: 250,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/image/corporate.jpeg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  " Corporate travel ",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Color.fromARGB(255, 1, 13, 107),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => global(),
                    //     ));
                  },
                  child: Container(
                    width: 155,
                    height: 250,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/image/global.jpeg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  " Global travel ",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Color.fromARGB(255, 1, 13, 107),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
    ]));
  }
}
