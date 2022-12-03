import 'package:flutter/material.dart';
import 'package:gamme_quize/Start_ganme.dart';

main() {
  runApp(MyGame());
}

class MyGame extends StatefulWidget {
  const MyGame({super.key});

  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: game_Quiz(),
    );
  }
}
