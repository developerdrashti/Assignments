import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'auth_service.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            FirebaseAuth.instance.currentUser!.email!,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          //   Image.network(FirebaseAuth.instance.currentUser!.!,),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            padding: const EdgeInsets.all(10),
            color: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Text(
              'LOG OUT',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            onPressed: () {
              AuthService().signOut();
            },
          ),
        ],
      ),
    );
  }
}
