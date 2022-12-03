import 'package:flutter/material.dart';

class task6 extends StatelessWidget {
  const task6({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Color.fromARGB(255, 240, 183, 186),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.red,
                  size: 50,
                ),
              ),
              Container(
                child: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 5, 87, 124),
                  size: 50,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Color.fromARGB(255, 106, 207, 230),
                ),
              ),
              Container(
                child: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 159, 222, 10),
                  size: 50,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Color.fromARGB(255, 213, 228, 142),
                ),
              ),
              Container(
                child: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 245, 10, 183),
                  size: 50,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Color.fromARGB(255, 236, 110, 227),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Icon(
                      Icons.person,
                      color: Colors.red,
                      size: 50,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 224, 155, 155),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 8, 154, 227),
                      size: 50,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 147, 212, 244),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 173, 222, 11),
                      size: 50,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 205, 230, 170),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 229, 8, 174),
                      size: 50,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 237, 158, 233),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
