import 'package:flutter/material.dart';
import 'package:pocketbook/income.dart';

class adddetails extends StatefulWidget {
  const adddetails({super.key});

  @override
  State<adddetails> createState() => _adddetailsState();
}

class _adddetailsState extends State<adddetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(
                  child: Text(
                    "+income",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  child: Text(
                    "-expence",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                )
              ]),
              title: Text('add your details'),
              backgroundColor: Colors.deepPurpleAccent,
            ),
            body:
                TabBarView(children: [income(), Icon(Icons.music_off_sharp)])
                ));
  }
}
