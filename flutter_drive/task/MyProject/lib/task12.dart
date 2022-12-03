import 'package:flutter/material.dart';
import 'package:project6/images.dart';

class task12 extends StatefulWidget {
  const task12({super.key});

  @override
  State<task12> createState() => _task12State();
}

class _task12State extends State<task12> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            child: Image.network(
                "data:image/jpeg;base64,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"),
            height: 300,
            width: 600,
          ),
          Container(
            child: Text(
              "A Taste of Exotic India",
              style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
            ),
          ),
          Container(
            child: Text(
              "indian cuisine consistes of a varity of regional",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Text(
              "and tradition cuisines native",
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 73, 73),
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 330),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.rectangle,
                    color: Colors.amber,
                    size: 20,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 241, 236, 218),
                    size: 20,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 241, 236, 218),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 189, 237, 233),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: Text(
                      "skip",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (((context) => page1()))));
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 25, 210, 191),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                          color: Color.fromARGB(255, 236, 238, 241),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: (Scaffold(
          appBar: AppBar(),
          body: Column(children: [
            Container(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB2IpjdK5IWpvMuqGiMLPwGSICpe_Ovd_09A&usqp=CAU",
                height: 300,
                width: 600,
              ),
            ),
            Container(
              child: Text(
                "Delivery Happiness",
                style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
              ),
            ),
            Container(
              child: Text(
                "we delevering foods fast,hot and free no",
                style: TextStyle(
                    color: Color.fromARGB(255, 77, 73, 73),
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              child: Text(
                "matter if you order online or cash",
                style: TextStyle(
                    color: Color.fromARGB(255, 77, 73, 73),
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 330),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 241, 236, 218),
                      size: 20,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.rectangle,
                      color: Colors.amber,
                      size: 20,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 241, 236, 218),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 120,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 189, 237, 233),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      child: Text(
                        "skip",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (((context) => page2()))));
                      },
                      child: Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 25, 210, 191),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                        child: Text(
                          "NEXT",
                          style: TextStyle(
                            color: Color.fromARGB(255, 236, 238, 241),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ]),
        )));
  }
}

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(),
            body: Column(children: [
              Container(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHCpw0AoRVPK2UlADDGe045_nW803IoSkbjg&usqp=CAU",
                  height: 300,
                  width: 600,
                ),
              ),
              Container(
                child: Text(
                  "Hot And Spicy Foods",
                  style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
                ),
              ),
              Container(
                child: Text(
                  "our  personal recepies with tasty hot and spicy",
                  style: TextStyle(
                      color: Color.fromARGB(255, 77, 73, 73),
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                child: Text(
                  "grilled food and sauces",
                  style: TextStyle(
                      color: Color.fromARGB(255, 77, 73, 73),
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 330),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 241, 236, 218),
                        size: 20,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 241, 236, 218),
                        size: 20,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.rectangle,
                        color: Colors.amber,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (((context) => task12()))));
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30, left: 300),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 25, 210, 191),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      child: Text(
                        "Gets strated",
                        style: TextStyle(
                          color: Color.fromARGB(255, 236, 238, 241),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ])));
  }
}
