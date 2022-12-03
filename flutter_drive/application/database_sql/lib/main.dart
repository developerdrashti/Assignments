import 'package:database_sql/database/Home_Screen.dart';
import 'package:database_sql/SendData/input_screen.dart';
import 'package:database_sql/repo.dart';
import 'package:database_sql/main_db.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: myinputscrren(),
    );
  }
}
