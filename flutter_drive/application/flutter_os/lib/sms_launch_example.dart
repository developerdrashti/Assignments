import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SmsExample extends StatefulWidget {
  const SmsExample({super.key});

  @override
  State<SmsExample> createState() => _SmsExampleState();
}

class _SmsExampleState extends State<SmsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SMS"),
      ),
      body: Container(
          child: ElevatedButton(
        child: Text("SEND SMS"),
        onPressed: () async {
          var url = Uri.parse("sms:8469820697");
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          } else {
            throw "invalid url";
          }
        },
      )),
    );
  }
}
