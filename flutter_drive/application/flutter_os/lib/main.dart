import 'package:flutter/material.dart';
import 'package:flutter_os/dropdowa_list.dart';
import 'package:flutter_os/phone_calling_example.dart';
import 'package:flutter_os/sms_launch_example.dart';
import 'package:flutter_os/url_view.dart';

void main() {
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
      // home: MyPhoneCallExample(),
      // home: SmsExample(),
      // home: MyUrlView(),
      home: MyDropdowmList(),
    );
  }
}
