import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auths/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class otp extends StatefulWidget {
  var phones;
  var MobileNUmberSHow;
  otp({super.key, required this.phones, required this.MobileNUmberSHow});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  var _otpController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  bool errorController = true;
  var ot = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Phone Verification'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 100, left: 100),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMyJa3ODf3BLP2AQ_pl6dzbkVUA_kUkYCAivJMenfrzCXbcchMX2JbyLwmCHenmV3fRUM&usqp=CAU",
              fit: BoxFit.cover,
              width: 200,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 80),
            child: Text(
              "Verification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 19, left: 80),
            child: Text(
              "Enter otp code sent to your number   ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(top: 19, left: 80),
            child: Text(
              "${widget.MobileNUmberSHow} ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: PinCodeTextField(
              length: 6,

              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
              ),
              obscureText: false,
              controller: _otpController,
              animationType: AnimationType.slide,
              animationDuration: Duration(milliseconds: 500),
              // Pass it here
              onChanged: (value) {
                setState(() {
                  ot = value;
                });
              },
              appContext: context,
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: () async {
                try {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: widget.phones, smsCode: ot);

                  await auth.signInWithCredential(credential);

                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                      (route) => false);
                } catch (e) {}
              },
              child: Text("continue"))
        ]),
      ),
    ));
  }
}
