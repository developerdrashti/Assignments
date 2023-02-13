import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:signinupfirebase/reusable_widget/reusable_widget.dart';
import 'package:signinupfirebase/scrren/homescreeen.dart';
import 'package:signinupfirebase/scrren/signup_screen.dart';
import 'package:signinupfirebase/utils/colors_util.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController _passwordTextcontroller = TextEditingController();
  TextEditingController _emailTextcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        hexStringToColor("CB2B93"),
        hexStringToColor("9546C4"),
        hexStringToColor("5E61F4"),
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 20, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: 380,
                  width: 270,
                  alignment: Alignment.center,
                  child: logowidget(String, "assets/images/logo1.png")),
              SizedBox(
                height: 10,
              ),
              reusableTextField("Enter username", Icons.person_outlined, false,
                  _emailTextcontroller),
              SizedBox(
                height: 20,
              ),
              reusableTextField("Enter password", Icons.lock_outlined, true,
                  _passwordTextcontroller),
              SizedBox(
                height: 20,
              ),
              signInsignUpButton(context, true, () {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: _emailTextcontroller.text,
                        password: _passwordTextcontroller.text)
                    .then((value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homescreen()));
                }).onError((error, stackTrace) {
                  print("Error ${error.toString()}");
                });
              }),
              signupoption()
            ]),
      )),
    ));
  }

  Row signupoption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "dont't have account?",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => signupscreen()));
          },
          child: const Text(
            "  sign up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
