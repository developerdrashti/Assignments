import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webview extends StatefulWidget {
  const webview({super.key});

  @override
  State<webview> createState() => _webviewState();
}

class _webviewState extends State<webview> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: WebView(
          initialUrl: 'https://www.delhiinformation.in/delhi/history.html',
        ),
      ),
    );
  }
}
