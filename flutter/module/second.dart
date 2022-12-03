import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<second> {
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController numbercontroller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("textformfield"),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(5),
          child: TextFormField(
            controller: numbercontroller,
            decoration: InputDecoration(
                label: Text("first number"),
                hintText: "first number",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: TextFormField(
            controller: numbercontroller1,
            decoration: InputDecoration(
                label: Text("second number"),
                hintText: "second number",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (((context) => page2()))));
          },
          // ignore: prefer_const_constructors
          style: ButtonStyle(),
          child: Text("submit"),
        )
      ]),
    ));
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
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
