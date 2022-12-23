import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyUrlView extends StatefulWidget {
  const MyUrlView({super.key});

  @override
  State<MyUrlView> createState() => _MyUrlViewState();
}

class _MyUrlViewState extends State<MyUrlView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ElevatedButton(
        child: Text("click here"),
        onPressed: () async {
          const url = "http://www.gmail.com";
          if (await canLaunch(url)) {
            await launch(url);
          }
        },
      )),
    );
  }
}
