import 'package:flutter/material.dart';
import 'package:navigation_drawtest/about.dart';
import 'package:navigation_drawtest/account.dart';

import 'package:navigation_drawtest/mydrawer_header.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 151, 238, 159),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(39, 213, 5, 130),
        title: Text("Navigation drawer"),
      ),
      body: Container(
        child: Center(
            child: Text(
          "HOME PAGE",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.hdr_plus),
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            MyHeaderDrawer(),
            MyDrawerlist(),
          ],
        )),
      )),
    );
  }

  Widget MyDrawerlist() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(),
          menuItem1(),
          menuItem2(),
        ],
      ),
    );
  }

  Widget menuItem() {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => homepage()));
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(children: [
            Expanded(
                child: Icon(
              Icons.home_filled,
              size: 20,
              color: Colors.black,
            )),
            Expanded(
                flex: 3,
                child: Text(
                  "home",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ]),
        ),
      ),
    );
  }

  Widget menuItem1() {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => account()));
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(children: [
            Expanded(
                child: Icon(
              Icons.account_balance,
              size: 20,
              color: Colors.black,
            )),
            Expanded(
                flex: 3,
                child: Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ]),
        ),
      ),
    );
  }

  Widget menuItem2() {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => about()));
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(children: [
            Expanded(
                child: Icon(
              Icons.history_rounded,
              size: 20,
              color: Colors.black,
            )),
            Expanded(
                flex: 3,
                child: Text(
                  "About",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ]),
        ),
      ),
    );
  }
}
