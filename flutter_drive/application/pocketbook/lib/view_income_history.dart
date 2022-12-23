import 'package:flutter/material.dart';
import 'package:pocketbook/incomemodel.dart';
import 'package:pocketbook/services.dart';

class view_income_history extends StatefulWidget {
  const view_income_history({super.key});

  @override
  State<view_income_history> createState() => _view_income_historyState();
}

class _view_income_historyState extends State<view_income_history> {
  List<MyBudget> incomelist = <MyBudget>[];
  var _services = Myservices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    incomehistory();
  }

  incomehistory() async {
    var result = await _services.historyGetAllBudget();
    incomelist = <MyBudget>[];
    result.forEach((Entry) {
      setState(() {
        var _incomes = MyBudget();
        _incomes.id = Entry['id'];
        _incomes.name = Entry['name'];
        _incomes.amount = Entry['amount'];
        _incomes.date = Entry['date'];
        _incomes.time = Entry['time'];
        _incomes.mode = Entry['mode'];
        incomelist.add(_incomes);
        print(
            ">>>>>>>>>>>>>>>>>>>>>>>>>$incomelist>>>>>>>>>>>>>>>>>>>>>>>>>>>>.");
        print(">>>>>>>>>>>>>>>>>>>>>>>>>$Entry>>>>>>>>>>>>>>>>>>>>>>>>>>>>.");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("view_income_history")),
    );
  }
}
