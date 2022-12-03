import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project6/images.dart';

class list_view extends StatefulWidget {
  const list_view({super.key});

  @override
  State<list_view> createState() => _list_viewState();
}

class _list_viewState extends State<list_view> {
  List<String> img = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png"
  ];
  List<String> Title = [
    " Zinger Burger",
    " Potato Fries",
    " noodles Chicken",
    " Chicken Popcorn"
  ];
  List<String> SubTitle = [
    " Extra Cheese",
    " No Addons",
    " No Addons",
    " No Addons"
  ];
  List<String> Price = [
    " 500",
    " 120",
    " 370",
    " 500",
  ];
  List<double> Num = [2, 1, 2, 1];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (Scaffold(
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Card",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
                  Text("Total: 1140"),
                ],
              ),
              Container(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "continue to checkout",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent),
                ),
              ),

              // ListView.builder(
              //     itemCount: img.length,
              //     itemBuilder: ((context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.all(15.0),
              //         child: Container(
              //           height: 110,
              //           decoration: BoxDecoration(
              //               color: Color(0xFFECECEC),
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(40))),
              //           child: Row(children: [
              //             Container(
              //               child: Image.asset(
              //                 img[index],
              //                 fit: BoxFit.fill,
              //               ),
              //               width: 100,
              //               height: 80,
              //             ),
              //             Container(
              //               child: Column(children: [
              //                 Text(Title[index]),
              //                 Text(SubTitle[index]),
              //                 Row(
              //                   children: [
              //                     Text(Price[index]),
              //                     // Text(Num[index].toString()),
              //                   ],
              //                 )
              //               ]),
              //             ),
              //           ]),
              //         ),
              //       );
              //     })),
            ],
          ),
        ),
      )),
    );
  }
}
