import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 151, 238, 159),
        body: Column(children: [
          Container(
              margin: EdgeInsets.only(top: 150, left: 70),
              child: Image.asset("assets/images/company.png")),
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Text(
              "        A company description is an overview of the company's plan, vision, and relationships. These documents typically include the company's name, business structure, mission statement, and an overview of the target market",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ]),
      ),
    );
  }
}
