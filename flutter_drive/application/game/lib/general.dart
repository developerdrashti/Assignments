import 'package:flutter/material.dart';
import 'package:game/startscreen.dart';

var totalScore = 0;

class general extends StatelessWidget {
  const general({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Center(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 1,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const startscreen()),
                );
              },
              child: Expanded(
                child: Container(
                  // margin: EdgeInsets.only(left: 30),
                  alignment: Alignment.center,
                  height: 175,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/controller.png'))),
                  child: Center(
                    child: Text(
                      "Game",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.blue,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                          fontSize: 50,
                          color: Colors.yellow[500],
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Open Sans'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
