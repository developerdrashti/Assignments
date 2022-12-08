import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ten extends StatefulWidget {
  const ten({super.key});

  @override
  State<ten> createState() => _tenPageState();
}

class _tenPageState extends State<ten> {
  final _userValue = TextEditingController();
  final _userPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: TextFormField(
                      controller: _userValue,
                      decoration: InputDecoration(
                        hintText: "Enter Your Email",
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 83, 137, 164),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              _userValue.clear();
                            },
                            icon: const Icon(Icons.clear)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: TextFormField(
                      controller: _userPassword,
                      decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(
                          Icons.home,
                          color: Color.fromARGB(255, 85, 141, 168),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              _userPassword.clear();
                            },
                            icon: const Icon(Icons.clear)),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20, right: 240),
                      child: Text(
                        "ForgetPassword?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 83, 135, 161),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 90),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      label: Text(
                        "Login",
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 82, 133, 159),
                        fixedSize: const Size(280, 43),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
