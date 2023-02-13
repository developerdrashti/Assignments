import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:travelogue/education.dart';
import 'package:travelogue/homescreen/pages/history/history.dart';
import 'package:travelogue/homescreen/pages/hotel/hotel.dart';
import 'package:travelogue/homescreen/pages/place/place.dart';
import 'package:travelogue/homescreen/pages/place/temple.dart';
import 'package:travelogue/homescreen/pages/travel/travels.dart';
import 'package:travelogue/pages/history/history.dart';
import 'package:travelogue/pages/hotel/hotel.dart';
import 'package:travelogue/pages/travel/travels.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(253, 255, 254, 254),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 2.2,
                        decoration: BoxDecoration(
                            gradient: new LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 142, 146, 174),
                            Color.fromARGB(255, 112, 123, 231),
                            Color.fromARGB(255, 142, 146, 174),
                          ],
                        )),
                      ),
                      Column(children: [
                        SizedBox(
                          height: 70,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 320),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.menu,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                child: Image.asset(
                                  "assets/image/header.png",
                                  height: 45,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 140,
                        ),
                        Container(
                          child: Column(children: [
                            CarouselSlider(
                              items: [
                                Container(
                                  margin: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      image: AssetImage('assets/image/02.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      image: AssetImage('assets/image/03.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      image: AssetImage('assets/image/04.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      image: AssetImage('assets/image/06.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                              options: CarouselOptions(
                                height: 200.0,
                                enlargeCenterPage: true,
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 800),
                                viewportFraction: 0.8,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) => webview()),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              18), // Image border
                                          child: SizedBox.fromSize(
                                            child: Image.asset(
                                              'assets/image/07.jpg',
                                              height: 105,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "HISTORY",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) => webview1()),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              18), // Image border
                                          child: SizedBox.fromSize(
                                            child: Image.asset(
                                              'assets/image/08.webp',
                                              height: 105,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "PLACE",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) => webview2()),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              18), // Image border
                                          child: SizedBox.fromSize(
                                            child: Image.asset(
                                              'assets/image/09.jpg',
                                              height: 105,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "HOTEL",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print("...>>>>>Click done");
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Traveling(),
                                        ));
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              18), // Image border
                                          child: SizedBox.fromSize(
                                            child: Image.asset(
                                              'assets/image/12.jpg',
                                              height: 105,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "TRAVELS",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        )
                      ]),
                    ]),
                  ],
                ),
              ),
            )));
  }
}
