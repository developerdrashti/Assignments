import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class akshardham extends StatefulWidget {
  const akshardham({super.key});

  @override
  State<akshardham> createState() => _akshardhamState();
}

class _akshardhamState extends State<akshardham> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset(
                      "assets/image/Baps_logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: Image.asset(
                      "assets/image/swaminarayan.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Container(
                height: 300,
                child: CarouselSlider(
                  items: [
                    Image.asset(
                      "assets/image/swami1.jpg",
                      height: 100,
                    ),
                    Image.asset(
                      'assets/image/swami2.jpg',
                      height: 100,
                    ),
                    Image.asset(
                      'assets/image/swami3.jpg',
                      height: 100,
                    ),
                    Image.asset(
                      'assets/image/swami4.jpg',
                      height: 100,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Text(
                "WHAT IS AKSHARDHAM",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "'Akshardham' means the divine abode of God. It is hailed as an eternal place of devotion, purity and peace.Swaminarayan Akshardham at New Delhi is a Mandir – an abode of God, a Hindu house of worship, and a spiritual and cultural campus dedicated to devotion, learning and harmony.",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "-------***EXPLORE***------",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 70,
                    child: Image.asset("assets/image/icon_mandir.png"),
                  ),
                  SizedBox(
                    width: 70,
                    child: Image.asset("assets/image/icon_abhishek_mandap.png"),
                  ),
                  SizedBox(
                    width: 70,
                    child: Image.asset("assets/image/icon_hall1.png"),
                  ),
                  SizedBox(
                    width: 70,
                    child: Image.asset("assets/image/icon_watershow.png"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: 70,
                      child: Text(
                        "mandir",
                        style: TextStyle(fontSize: 14),
                      )),
                  SizedBox(
                      width: 70,
                      child: Text(
                        "abhishek_mandap",
                        style: TextStyle(fontSize: 14),
                      )),
                  SizedBox(
                      width: 70,
                      child: Text(
                        "  hall",
                        style: TextStyle(fontSize: 14),
                      )),
                  SizedBox(
                      width: 70,
                      child: Text(
                        "watershow",
                        style: TextStyle(fontSize: 14),
                      )),
                ],
              ),
              Container(
                child: Image.asset(
                  'assets/image/swami3.jpg',
                ),
              ),
            ],
          ),
        ),
      ),

      //       SizedBox(
      //         height: 1,
      //       ),
      //       Container(
      //         //height: 400,
      //         margin: EdgeInsets.all(5),
      //         child:
      //       ),
      //       Container(
      //         child:
      //       ),
      //       Container(
      //         margin: EdgeInsets.only(top: 30),
      //         child:
      //       ),
      //       Container(
      //         margin: EdgeInsets.only(top: 30),
      //         child: Row(
      //           children: [
      //             Container(
      //               margin: EdgeInsets.all(6),
      //               width: 90,
      //               child: Image.asset("assets/image/icon_mandir.png"),
      //             ),
      //             Container(
      //               margin: EdgeInsets.all(6),
      //               width: 90,
      //               child: Image.asset("assets/image/icon_abhishek_mandap.png"),
      //             ),
      //             Container(
      //               margin: EdgeInsets.all(6),
      //               width: 90,
      //               child: Image.asset("assets/image/icon_hall1.png"),
      //             ),
      //             Container(
      //               margin: EdgeInsets.all(6),
      //               width: 90,
      //               child: Image.asset("assets/image/icon_watershow.png"),
      //             ),
      //           ],
      //         ),
      //       ),
      //
    );
  }
}
