import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pocketbook/adddetails.dart';
import 'package:sizer/sizer.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
        onPressed: (() {
          Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                duration: Duration(milliseconds: 2000),
                child: adddetails(),
                inheritTheme: true,
                ctx: context),
          );
        }),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Text(
              "your balance",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "1500.00",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 209, 219, 227)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: ListTile(
                title: Text(
                  "income",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 59, 245, 30)),
                ),
                subtitle: Text(
                  "1500.00",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 24, 23, 23)),
                ),
                leading: Icon(
                  Icons.arrow_circle_up_outlined,
                  color: Color.fromARGB(255, 59, 245, 30),
                  size: 7.h,
                ),
              )),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                  child: ListTile(
                title: Text(
                  "expence",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 229, 19, 19)),
                ),
                subtitle: Text(
                  "1500.00",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 17, 16, 16)),
                ),
                leading: Icon(
                  Icons.arrow_circle_down_outlined,
                  color: Color.fromARGB(255, 229, 19, 19),
                  size: 7.h,
                ),
              )),
            ],
          ),
          Spacer(),
          Text(
            "show all transcation",
          ),
          SizedBox(
            height: 3.h,
          )
        ]),
      ),
    );
  }
}
