//8. Write a code to display profile and logout option in options menu
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class eight extends StatefulWidget {
  const eight({super.key});

  @override
  State<eight> createState() => _eightState();
}

class _eightState extends State<eight> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {});

        Navigator.of(context).pushReplacement(
            CupertinoPageRoute(builder: (context) => loginpage()));
      },
      child: Text(
        "Logout",
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
