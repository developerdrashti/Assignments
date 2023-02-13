import 'package:flutter/material.dart';

class MyDropdowmList extends StatefulWidget {
  const MyDropdowmList({super.key});

  @override
  State<MyDropdowmList> createState() => _MyDropdowmListState();
}

class _MyDropdowmListState extends State<MyDropdowmList> {
  String selecteditem = "c language";
  var subject = ['c language', 'c++', "java", "php", "python"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton(
          value: selecteditem,
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          items: subject.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selecteditem = value!;
            });
          },
        )
      ],
    ));
  }
}
