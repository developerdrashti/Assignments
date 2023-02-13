import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:signinupfirebase/reusable_widget/reusable_widget.dart';
import 'package:signinupfirebase/scrren/homescreeen.dart';
import 'package:signinupfirebase/scrren/signin_screen.dart';
import 'package:signinupfirebase/utils/colors_util.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  TextEditingController _userTextcontroller = TextEditingController();
  TextEditingController _emailTextcontroller = TextEditingController();
  TextEditingController _passwordTextcontrooler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "sign up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter username", Icons.person_outlined, false,
                _userTextcontroller),
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter E-mail Id", Icons.person_outline, false,
                _emailTextcontroller),
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter password", Icons.lock_outline, true,
                _passwordTextcontrooler),
            const SizedBox(
              height: 20,
            ),
            signInsignUpButton(context, false, () {
              FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: _emailTextcontroller.text,
                      password: _passwordTextcontrooler.text)
                  .then((value) => () {
                        print("created new account");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homescreen()));
                      })
                  //     .onError(
                  //   // (error, stackTrace) {
                  //   //   print("Error ${error.toString()}");
                  //   // },

                  // );
                  .onError;
              (error, stackTrace) {
                print("Error ${error.toString()}");
              };
            })
          ]),
        )),
      ),
    );
  }
}
