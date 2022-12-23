import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class MyWidget extends StatefulWidget {
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List _selectedIndexs = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (ctx, i) {
              final _isSelected = _selectedIndexs.contains(i);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (_isSelected) {
                      _selectedIndexs.remove(i);
                    } else {
                      _selectedIndexs.add(i);
                    }
                  });
                },
                child: Container(
                  color: _isSelected ? Colors.red : null,
                  child: ListTile(title: Text("Khadga")),
                ),
              );
            }),
      ),
    );
  }
}
