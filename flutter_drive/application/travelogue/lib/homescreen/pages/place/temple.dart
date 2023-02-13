import 'package:flutter/material.dart';
import 'package:travelogue/Properties.dart';

import 'package:travelogue/homescreen/pages/history/history.dart';
import 'package:travelogue/kali.dart';
import 'package:travelogue/mahabodhi.dart';
import 'package:travelogue/pages/place/temple/akshardham.dart';
import 'package:travelogue/pages/place/temple/chhatarpur.dart';
import 'package:travelogue/pages/place/temple/kali.dart';
import 'package:travelogue/pages/place/temple/mahabodhi.dart';
import 'package:travelogue/pages/place/temple/qutub_minar.dart';
import 'package:travelogue/pages/place/temple/saibaba.dart';
import 'package:travelogue/pages/place/temple/shridigambar.dart';
import 'package:travelogue/pages/place/temple/yogmaya.dart';
import 'package:travelogue/qutub_minar.dart';
import 'package:travelogue/saibaba.dart';
import 'package:travelogue/shridigambar.dart';
import 'package:travelogue/yogmaya.dart';

class webview4 extends StatefulWidget {
  const webview4({super.key});

  @override
  State<webview4> createState() => _webview4State();
}

class _webview4State extends State<webview4> {
  var properties = Properties();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Padding(
      //   padding: const EdgeInsets.only(left: 25),
      //   child: GridView.builder(
      //     shrinkWrap: true,
      //     itemCount: properties.TempleImages.length,
      //     scrollDirection: Axis.vertical,
      //     physics: const NeverScrollableScrollPhysics(),
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //     ),
      //     itemBuilder: (BuildContext context, int index) {
      //       return Directionality(
      //         textDirection: TextDirection.rtl,
      //         child: Container(
      //           margin: const EdgeInsets.only(right: 25, top: 25),
      //           width: double.infinity,
      //           height: double.infinity,
      //           decoration: BoxDecoration(
      //             borderRadius: const BorderRadius.all(Radius.circular(15)),
      //             color: const Color.fromARGB(255, 231, 229, 229),
      //             image: DecorationImage(
      //               image: AssetImage(properties.TempleImages[index]),
      //               fit: BoxFit.cover,
      //               matchTextDirection: true,
      //             ),
      //           ),
      //           child: GestureDetector(
      //             onTap: () {
      //               setState(() {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                         builder: ((context) =>
      //                             properties.popularPlace[index])));
      //               });
      //             },
      //             child: Stack(alignment: Alignment.center, children: [
      //               Text(
      //                 properties.recommendedImgText[index],
      //                 style: const TextStyle(
      //                     fontSize: 20,
      //                     fontWeight: FontWeight.w800,
      //                     letterSpacing: 2),
      //               )
      //             ]),
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => akshardham()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/akshardham.png',
                            height: 105,
                          ),
                        ),
                      ),
                      Text(
                        "Akshardham",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => chhatarpur()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/Chhatarpur-Mandir.png',
                            height: 110,
                          ),
                        ),
                      ),
                      Text(
                        "chhatarpur-mandir",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => qutub_minar()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/qutub_minar.png',
                            height: 105,
                            width: 200,
                          ),
                        ),
                      ),
                      Text(
                        "qutub_minar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                      builder: ((context) => yogmaya()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/Yogmaya.png',
                            height: 105,
                          ),
                        ),
                      ),
                      Text(
                        "Yogmaya",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => kali()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/kali.png',
                            height: 105,
                            width: 200,
                          ),
                        ),
                      ),
                      Text(
                        "kali bari",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                      builder: ((context) => mahabodhi()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/Mahabodhi.png',
                            height: 105,
                          ),
                        ),
                      ),
                      Text(
                        "Mahabodhi",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => saibaba()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/Sai-Baba.jpg',
                            height: 105,
                            width: 200,
                          ),
                        ),
                      ),
                      Text(
                        "Sai-Baba",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                      builder: ((context) => shridigambar()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'assets/image/Shri-Digambar.png',
                            height: 105,
                          ),
                        ),
                      ),
                      Text(
                        "Shri-Digambar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
