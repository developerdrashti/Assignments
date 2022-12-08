//6. Write a code to select Date on button's click event

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class six extends StatefulWidget {
  const six({super.key});

  @override
  State<six> createState() => _sixState();
}

class _sixState extends State<six> {
  var msg;
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("date"),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height / 1,
          child: Column(
            children: [
              SfDateRangePicker(
                onSelectionChanged: _onSelectionChanged,
                onSubmit: (p0) {
                  msg = _onSelectionChanged;
                },
                selectionMode: DateRangePickerSelectionMode.single,
              ),
            ],
          ),
        ));
  }
}
