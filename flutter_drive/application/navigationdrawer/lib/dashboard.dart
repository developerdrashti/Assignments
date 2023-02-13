import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigationdrawer/homepage.dart';

class MyDashbord extends StatefulWidget {
  const MyDashbord({super.key});

  @override
  State<MyDashbord> createState() => _MyDashbordState();
}

enum DrawerSections { dashboard, contact, profile }

var mainContainer;
var currentPage = DrawerSections.dashboard;

class _MyDashbordState extends State<MyDashbord> {
  @override
  Widget build(BuildContext context) {
    setPages();
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      body: mainContainer,
      drawer: Drawer(
        backgroundColor: Colors.pink,
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [],
          ),
        )),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          menuItem(1, "Dashboard", Icons.dashboard,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Contack", Icons.call,
              currentPage == DrawerSections.contact ? true : false),
          Divider(),
          menuItem(3, "Profile", Icons.person,
              currentPage == DrawerSections.profile ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.white : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contact;
            } else if (id == 2) {
              currentPage = DrawerSections.profile;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Row(children: [
            Icon(
              icon,
              size: 20,
              color: Colors.blueAccent,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.black),
            ),
          ]),
        ),
      ),
    );
  }
}

void setPages() {
  if (currentPage == DrawerSections.dashboard) {
    mainContainer = Home_page();
  } else if (currentPage == DrawerSections.contact) {
    //contact page
  } else if (currentPage == DrawerSections.profile) {}
}
