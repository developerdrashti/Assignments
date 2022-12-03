import 'package:flutter/material.dart';
class task5 extends StatelessWidget {
  const task5({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
            ]),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.message,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.message,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.message,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.message,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
            ]),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.rice_bowl_sharp,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.rice_bowl_sharp,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.rice_bowl_sharp,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.rice_bowl_sharp,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
            ]),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.thumb_up,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.thumb_up,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.thumb_up,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Icon(
                  Icons.thumb_up,
                  color: Color.fromARGB(255, 47, 212, 195),
                  size: 35,
                ),
              ),
            ]),
          ),
          Container(
            color: Colors.lightGreen,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.all(17),
                child: Text("filled"),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Text("outlined"),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Text("rounded"),
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Text("sharp"),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
