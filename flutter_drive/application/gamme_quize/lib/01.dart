import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:gamme_quize/02.dart';
// import 'package:image_games/homepage.dart';
// import 'package:image_games/qustions/q2.dart';
// import 'package:simple_timer/simple_timer.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class q1 extends StatefulWidget {
  const q1({super.key});

  @override
  State<q1> createState() => _Guess1State();
}

class _Guess1State extends State<q1> {
  int r1 = 0;
  bool isLogoVisible = true;
  List _selectedIndexs = [];
  List qustion = [
    'A) rana daggubati',
    'B) Allu Arjun',
    'B) ranbir kapoor',
    'D) salman',
  ];
  List score = [
    5,
    0,
    0,
    0,
  ];

  // instantiation

  @override
  void initState() {
    Timer(const Duration(seconds: 8), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => q2(
                    r2: r1,
                  ))));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Visibility(
                        visible: isLogoVisible,
                        child: Image.network(
                          "https://images.news18.com/ibnlive/uploads/2022/12/rana-daggubati-1.jpg",
                          // fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        final _isSelected = _selectedIndexs.contains(index);
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              print(score[index]);

                              r1 = score[index].toInt();
                              if (_isSelected) {
                                _selectedIndexs.remove(index);
                                print("is selected");
                              } else {
                                _selectedIndexs.add(index);
                              }
                            });
                            print('-------> renk is -->$r1');
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(top: 15, left: 30),
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 1.3,
                            decoration: BoxDecoration(
                                color: _isSelected
                                    ? Colors.red
                                    : Colors.indigo[900],
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 20.0,
                                    spreadRadius: 1.0,
                                  )
                                ]),
                            child: Text(
                              qustion[index],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ]))));
  }
}
