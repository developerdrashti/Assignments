//7. create an application to display Textview when checkbox is checked and hide otherwise 
import 'package:flutter/material.dart';
class seven extends StatefulWidget {
  const seven({super.key});

  @override
  State<seven> createState() => _sevenState();
}

class _sevenState extends State<seven> {
  List<String>mylist = [];
  bool Android = false;
  bool java = false;
  bool Dart = false;
  bool Python = false;
  bool Flutter = false;
  String? result="0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            Text("Android"),
            Checkbox(value: Android, onChanged:((value) {
              setState(() {
                Android = value!;
                result= value.toString();
              });
              if(Android){
                mylist.add("Android");
              }else{
                mylist.remove("Android");
              }
            }))
          ],
        ),
        Row(
          children: [
            Text("java"),
            Checkbox(value: java, onChanged:((value) {
              setState(() {
                java = value!;
                result= value.toString();
              });
              if(java){
                mylist.add("java");
              }else{
                mylist.remove("java");
              }
            }))
          ],
        ),
        Row(
          children: [
            Text("Dart"),
            Checkbox(value: Dart, onChanged:((value) {
              setState(() {
                Dart = value!;
                result= value.toString();
              });
              if(Dart){
                mylist.add("Dart");
              }else{
                mylist.remove("Dart");
              }
            }))
          ],
        ),
        Row(
          children: [
            Text("python"),
            Checkbox(value: Python, onChanged:((value) {
              setState(() {
                Python = value!;
                result= value.toString();
              });
              if(Python){
                mylist.add("Python");
              }else{
                mylist.remove("Python");
              }
            }))
          ],
        ),
         Row(
          children: [
            Text("Flutter"),
            Checkbox(value: Flutter, onChanged:((value) {
              setState(() {
                Flutter = value!;
                result= value.toString();
              });
              if(Flutter){
                mylist.add("Flutter");
              }else{
                mylist.remove("Flutter");
              }
            }))
          ],
        ),
        Text(" result=$result"),
      ]),
    );
  }
}