import 'package:flutter/material.dart';
import 'package:flutter_os/datepicker.dart';
import 'package:flutter_os/dropdowan_list.dart';
import 'package:flutter_os/grid_example.dart';
import 'package:flutter_os/imagepicker.dart';
import 'package:flutter_os/phone_calling_example.dart';
import 'package:flutter_os/sms_launch_example.dart';
import 'package:flutter_os/stack.dart';
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
      // home: MyDropdowmList(),
      // home: gridexample());
      //home: gridexample();
      //home: stack(),
      home: MyImagePicker(),
    );
  }
}
