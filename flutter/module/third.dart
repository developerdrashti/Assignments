import 'package:flutter/material.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController usercontroller1 = TextEditingController();
  String answer = "0";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextFormField(
                      controller: usercontroller,
                      decoration: InputDecoration(
                        label: Text("first number"),
                        hintText: "first number",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        )),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextFormField(
                      controller: usercontroller1,
                      decoration: InputDecoration(
                        label: Text("second number"),
                        hintText: "second number",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        )),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                      ),
                    ),
                  ),
                  RadioListTile(
                      title: Text("Addtion"),
                      value: "Addtion",
                      groupValue: answer,
                      onChanged: ((value) {
                        setState(() {
                          int sum = int.parse(usercontroller.text) +
                              int.parse(usercontroller1.text);
                          answer = sum.toString();
                        });
                      })),
                  RadioListTile(
                      title: Text("substraction"),
                      value: "substraction",
                      groupValue: answer,
                      onChanged: ((value) {
                        setState(() {
                          int sum = int.parse(usercontroller.text) -
                              int.parse(usercontroller1.text);
                          answer = sum.toString();
                        });
                      })),
                  RadioListTile(
                      title: Text("multiply"),
                      value: "multiply",
                      groupValue: answer,
                      onChanged: ((value) {
                        setState(() {
                          int sum = int.parse(usercontroller.text) *
                              int.parse(usercontroller1.text);
                          answer = sum.toString();
                        });
                      })),
                  RadioListTile(
                      title: Text("divivsion"),
                      value: "division",
                      groupValue: answer,
                      onChanged: ((value) {
                        setState(() {
                          int sum = int.parse(usercontroller.text) ~/
                              int.parse(usercontroller1.text);
                          answer = sum.toString();
                        });
                      })),
                  Text('answer:$answer')
                ])));
  }
}
