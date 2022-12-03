import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project6/main.dart';

class images extends StatelessWidget {
  const images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
          child: Container(
            child: Center(child: Text("jfd")),
            width: 300,
            height: 484,
            color: Colors.amber,
          ),
        )
      ]),
    );
  }
}

class drashti extends StatelessWidget {
  const drashti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.network(
            "https://thumbs.dreamstime.com/b/spring-summer-season-abstract-nature-background-grass-blue-sky-back-49716369.jpg"),
      ),
    );
  }
}
