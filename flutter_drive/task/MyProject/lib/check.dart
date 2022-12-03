import 'package:flutter/material.dart';

class check1 extends StatefulWidget {
  const check1({super.key});

  @override
  State<check1> createState() => _check1State();
}

class _check1State extends State<check1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: ElevatedButton(
          onPressed: () {
            showdialogfun(context);
          },
          child: Text("click here"),
        )),
      ),
    );
  }
}

void showdialogfun(BuildContext context) {
  AlertDialog alertDialog = AlertDialog(
    title: Text("alert"),
    content: Text("are you want to close this"),
    actions: [
      ElevatedButton(onPressed: () {}, child: Text("yes")),
      ElevatedButton(
          onPressed: (() {
            Navigator.of(context).pop();
          }),
          child: Text("cancel")),
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
