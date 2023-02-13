import 'package:firebase_example/customwidget/buttonwidget.dart';
import 'package:firebase_example/customwidget/textfieldwidget.dart';
import 'package:firebase_example/logic/mainlogic.dart';
import 'package:flutter/material.dart';
import 'package:firebase_example/screen/register.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController _emaillogincontroller = TextEditingController();
  TextEditingController _passwordlogincontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        SizedBox(
          height: 80,
        ),
        Center(
          child: Text(
            "Login",
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextFormField(
          controller: _emaillogincontroller,
        ),
        TextFormField(
          controller: _passwordlogincontroller,
        ),
        ElevatedButton(
            onPressed: () {
              createAccount(
                      email: _emaillogincontroller.text,
                      password: _passwordlogincontroller.text)
                  .then((result) {
                if (result == null) {
                  Navigator.pop(context);
                }
              });
            },
            child: Text("Save")),
      ]),
    ));
  }
}
