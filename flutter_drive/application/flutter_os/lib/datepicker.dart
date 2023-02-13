import 'package:flutter/material.dart';

/* 
   firsdate : earliest date
   lastdate: maximum possible date thet user can select
   initila date: which is display when date picker appear 
*/
class Mydate extends StatefulWidget {
  const Mydate({super.key});

  @override
  State<Mydate> createState() => _MydateState();
}

class _MydateState extends State<Mydate> {
  DateTime date_value = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date picker dialog "),
      ),
      body: Center(
          child: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  _selectedDate(context);
                },
                child: Text("click here")),
            Text(
              "${date_value.day}/ ${date_value.month}/ ${date_value.year} ",
              style: TextStyle(fontSize: 26),
            )
          ],
        ),
      )),
    );
  }

  _selectedDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: date_value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        helpText: "select Date",
        confirmText: "ok",
        cancelText: "cancel",
        initialDatePickerMode: DatePickerMode.year);
    if (selectedDate != null && selectedDate != date_value) {
      setState(() {
        date_value = selectedDate;
      });
    }
  }
}