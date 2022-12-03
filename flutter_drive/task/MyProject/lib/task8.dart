import 'package:flutter/material.dart';
class task8 extends StatelessWidget {
  const task8({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Row(children: [
          Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 227, 13, 13), width: 3)),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "*****",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 3)),
                  ),
                  Container(
                    child: Text("170 Reviews"),
                    margin: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 3)),
                  ),
                ],
              )),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 11, 173, 202), width: 3)),
            child: Column(children: [
              Container(
                child: Text(
                  "Strawberry pavlova",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 19, 19, 19), width: 3)),
              ),
              Container(
                child: Text(
                  "A pavlova is a meringue superb its  ",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                ),
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 19, 19, 19), width: 3)),
              ),
              Container(
                margin: EdgeInsets.only(top: 210),
                child: Row(children: [
                  Container(
                    child: Text(
                      "*****",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 3)),
                  ),
                  Container(
                    child: Text("170 Reviews"),
                    margin: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 3)),
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 220, 6, 6), width: 3)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 6),
                        child: Column(children: [
                          Container(
                            child: Icon(
                              Icons.present_to_all_sharp,
                              color: Color.fromARGB(255, 19, 17, 17),
                              size: 16,
                            ),
                          ),
                          Container(
                            child: Text("PREP"),
                          ),
                          Container(
                            child: Text("25 min"),
                          ),
                        ]),
                      ),
                      Container(
                        child: Column(children: [
                          Container(
                            child: Icon(
                              Icons.code_rounded,
                              color: Color.fromARGB(255, 13, 11, 12),
                              size: 16,
                            ),
                          ),
                          Container(
                            child: Text("CODEC"),
                          ),
                          Container(
                            child: Text("1 hr"),
                          ),
                        ]),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(children: [
                          Container(
                            child: Icon(
                              Icons.folder_off,
                              color: Color.fromARGB(255, 10, 10, 10),
                              size: 16,
                            ),
                          ),
                          Container(
                            child: Text("FFDC"),
                          ),
                          Container(
                            child: Text("4 hr"),
                          ),
                        ]),
                      ),
                    ]),
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(top: 300),
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(children: [
                          Container(
                            child: Icon(
                              Icons.present_to_all_sharp,
                              color: Color.fromARGB(255, 17, 15, 16),
                              size: 10,
                            ),
                          ),
                          Container(
                            child: Text(
                              "PREP",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 10),
                            ),
                          ),
                          Container(
                            child: Text(
                              "25 min",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 10),
                            ),
                          ),
                        ]),
                      ),
                    ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                    child: Column(children: [
                      Container(
                        child: Icon(
                          Icons.code_rounded,
                          color: Color.fromARGB(255, 8, 8, 8),
                          size: 10,
                        ),
                      ),
                      Container(
                        child: Text(
                          "CODEC",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 10),
                        ),
                      ),
                      Container(
                        child: Text(
                          "1 hr",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 10),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                    child: Column(children: [
                      Container(
                        child: Icon(
                          Icons.folder_off,
                          color: Color.fromARGB(255, 11, 11, 11),
                          size: 10,
                        ),
                      ),
                      Container(
                        child: Text(
                          "FFDC",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 10),
                        ),
                      ),
                      Container(
                        child: Text(
                          "4 hr",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 10),
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                margin: EdgeInsets.only(top: 30),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 26, 24, 24), width: 2)),
                    child: Icon(
                      Icons.home,
                      size: 40,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 227, 13, 13), width: 2)),
                    child: Text(
                      "PREP",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 225, 12, 12), width: 2)),
                    child: Text(
                      "25 min",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
