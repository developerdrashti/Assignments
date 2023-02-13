import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_example/screen/authentication.dart';
import 'package:firebase_example/screen/login.dart';
import 'package:firebase_example/screen/register.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Loginpage(),
      home: authentication(),
    );
  }
}
