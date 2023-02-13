import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_example/screen/homescreen.dart';
import 'package:firebase_example/screen/login.dart';
import 'package:flutter/material.dart';

class authentication extends StatelessWidget {
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return homepage();
    } else {
      return Loginpage();
    }
  }
}
