import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Google Login"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          //  top: size.height * 0.2,
          // bottom: size.height * 0.5
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello\n Google Sign In ",
                style: TextStyle(fontSize: 30),
              ),
              GestureDetector(
                onTap: () {
                  AuthService().SignInWithGoogle();
                },
                child: const Image(
                  //  width: 100,
                  height: 250,
                  image: NetworkImage(
                      'https://storage.googleapis.com/gd-wagtail-prod-assets/original_images/evolving_google_identity_2x1.jpg'),
                ),
              )
            ]),
      ),
    );
  }
}
