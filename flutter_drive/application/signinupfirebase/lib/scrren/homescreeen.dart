import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:signinupfirebase/scrren/signin_screen.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: Text("logout"),
        onPressed: () {
          FirebaseAuth.instance.signOut().then((value) {
            print("signed out");
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => signin()));
          });
        },
      )),
    );
  }
}
