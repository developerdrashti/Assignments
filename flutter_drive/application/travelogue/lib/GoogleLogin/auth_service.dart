import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:otpexample/google/Homepage.dart';
import 'package:otpexample/google/loginpage.dart';

class AuthService {
  //1.  HandleAuthState()

  handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return Homepage();
        } else {
          return const LoginPage();
        }
      },
    );
  }

  //2. signInWithGoogle()
  SignInWithGoogle() async {
    // trigger the authenction flow
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();

    ///googleSignIn

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    //create a new credetial
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  //3.  SignOut()
  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
