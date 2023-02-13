import 'package:flutter/material.dart';

class animation_example extends StatefulWidget {
  const animation_example({super.key});

  @override
  State<animation_example> createState() => _animation_exampleState();
}

class _animation_exampleState extends State<animation_example> {
  double _opacity = 1;
  double margin = 0;

  double _width = 200;
  double _height = 200;
  Color _color = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: AnimatedContainer(
          alignment: Alignment.center,
          duration: Duration(seconds: 2),
          margin: EdgeInsets.all(margin),
          width: _width,
          color: _color,
          height: _height,
          child: Column(children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    margin = 60;
                  });
                },
                child: Text("Animation")),
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    _color = Colors.amber;
                  });
                }),
                child: Text("color animation")),
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    _width = 400;
                  });
                }),
                child: Text("width animation")),
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    _height = 400;
                  });
                }),
                child: Text("height"))
          ]),
        ),
      ),
    );
  }
}
