import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPhoneCallExample extends StatelessWidget {
  const MyPhoneCallExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Call"),
      ),
      body: ElevatedButton(
        child: Text("call"),
        onPressed: () {
          launch("tel://8469820697");
        },
      ),
    );
  }
}
