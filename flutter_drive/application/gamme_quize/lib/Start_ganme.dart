import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gamme_quize/01.dart';

class game_Quiz extends StatefulWidget {
  const game_Quiz({super.key});

  @override
  State<game_Quiz> createState() => _DesignState();
}

class _DesignState extends State<game_Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://as2.ftcdn.net/v2/jpg/03/10/40/59/1000_F_310405991_qd09GXrEYoYeJE0WMyEpQ0NsCY1IuDzb.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        margin: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(80),
              child: Center(
                child: Text(
                  "GAME MASTER",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Image.network(
              "http://www.eteknix.com/wp-content/uploads/2015/12/loading-800x448.png",
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrangeAccent,
                  elevation: 3,

                  minimumSize: Size(20, 40), //////// HERE
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => q1()),
                    ),
                  );
                },
                child: Text('Start'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
