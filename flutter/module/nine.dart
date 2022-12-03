//9. Write a program in android display screen color which the Color will be select from the radio
//button.
import 'package:flutter/material.dart';
class nine extends StatefulWidget {
  const nine({super.key});

  @override
  State<nine> createState() => _nineState();
}

class _nineState extends State<nine> {
  TextEditingController clrcontroller = new TextEditingController();
  String? color;
  String? result  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEXTFORM FIELD")),
       body: Container(
        
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 80,right: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          
                 RadioListTile(title:Text("red"), value:"red", groupValue: result, onChanged: (((value) {
                   setState(() {
                     result= value.toString();
                     Text(" result=$result",style: TextStyle(color: Colors.red),);
                    
                    
                   });
                 }))),
                 RadioListTile(title:Text("yellow"), value:"yellow", groupValue: result, onChanged: (((value) {
                   setState(() {
                    result= value.toString();
                    Text(" result=$result",style: TextStyle(color: Colors.yellow),);
                     
                    
                   });
                 }))),
                 RadioListTile(title:Text("green"), value:"green", groupValue: result, onChanged: (((value) {
                   setState(() {
                     result= value.toString();
                     Text(" result=$result",style: TextStyle(color: Colors.green),);
                     
                    
                   });
                 }))),
                 RadioListTile(title:Text("purple"), value:"purple", groupValue: result, onChanged: (((value) {
                   setState(() {
                    result= value.toString();
                    Text(" result=$result",style: TextStyle(color: Colors.purple),);
                     
                    
                   });
                 }))),Text(" result=$result")
                 
                 ],
                 
                 ),
                 ),
    );
  }
} 