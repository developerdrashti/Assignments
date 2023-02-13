import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auths/OTP.dart';
import 'package:flutter/material.dart';

class phone extends StatefulWidget {
  const phone({super.key});

  @override
  State<phone> createState() => _phoneState();
}

class _phoneState extends State<phone> {
  var _numberController = TextEditingController();
  var phone;
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
                  margin: EdgeInsets.only(top: 100, left: 50),
                  child: Image.network(
                    // color: Color.fromARGB(255, 138, 213, 100),
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoAbeBQRnLEi9Ct1mAI-imYbK3TkQodT58GdPg8GjFFdrqKH1ekuSwPLooxEYN0Mfw7TQ&usqp=CAU",
                    fit: BoxFit.cover,
                    width: 200,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 80),
                  child: Text(
                    "Login with mobile number",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 19, left: 80),
                  child: Text(
                    "Enter your mobile number we will  ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 19, left: 60),
                  child: Text(
                    " sent your otp verify ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _numberController,
                      onChanged: (value) {
                        phone = value;
                      },
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 14, 228, 110),
                        icon: Icon(Icons.mobile_friendly),
                        hintText: '+91',
                        labelText: 'mobile number ',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                ElevatedButton(
                    onPressed: () async {
                      print(">>>${_numberController.text}<<<<");
                      var nums = _numberController.text.toString();

                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '+91${_numberController.text.toString()}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          phone = verificationId;

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => otp(
                                        phones: phone,
                                        MobileNUmberSHow: nums,
                                      )));
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    },
                    child: Text("continue"))
              ]),
            )));
  }
}
