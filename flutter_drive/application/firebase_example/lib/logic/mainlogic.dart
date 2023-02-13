import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_example/screen/login.dart';
import 'package:flutter/material.dart';

FirebaseAuth _auth = FirebaseAuth.instance;
Future createAccount({String? email, String? password}) async {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  try {
    User? user = (await _auth.createUserWithEmailAndPassword(
            email: email!, password: password!))
        .user;
    if (user != null) {
      await _firestore
          .collection("users")
          .doc(_auth.currentUser!.uid)
          .set({"name": user, "email": email, "status": "pending"});
      print("account create sucessfully");
    } else {
      print("account creation failed");
    }
  } on FirebaseAuthException catch (e) {
    return e.message;
  }
}

Future Logs({String? e, String? p}) async {
  try {
    await _auth.signInWithEmailAndPassword(email: e!, password: p!);
    return null;
  } on FirebaseAuthException catch (e) {
    return e.message;
  }
}

Future LogOut(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    await _auth.signOut().then(
      (value) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Loginpage(),
            ));
      },
    );
  } catch (e) {
    print(e);
  }
}
