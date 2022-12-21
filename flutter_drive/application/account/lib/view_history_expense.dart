import 'package:account/budgetmainpage.dart';
import 'package:account/alltranscation_model.dart';
import 'package:account/myService.dart';
import 'package:account/mybuget_model.dart';
import 'package:account/myexpence_model.dart';
import 'package:flutter/material.dart';

class ViewExpence extends StatefulWidget {
  const ViewExpence({super.key});

  @override
  State<ViewExpence> createState() => viewhisryState();
}

class viewhisryState extends State<ViewExpence> {
  List<MyExpence> _expencehistoryList = <MyExpence>[];
  var _myservices = Myservices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Gethistryexpence();
  }

  Gethistryexpence() async {
    var result = await _myservices.historyGetAllexpence();
    _expencehistoryList = <MyExpence>[];

    print("------$result");

    result.forEach((Entry) {
      setState(() {
        var myexpense = MyExpence();
        myexpense.id = Entry['id'];
        myexpense.month = Entry['month'];
        myexpense.amount = Entry['amount'];
        myexpense.created_at = Entry['created_at'];
        _expencehistoryList.add(myexpense);
        // addmoney = Entry['amount'];
        // print("---------addmoney--------$addmoney-----");
      });
    });
  }

  _deleteexpenceEntry(BuildContext context, id) {
    return showDialog(
        context: context,
        builder: (param) {
          return AlertDialog(
            title: Text("Are you sure want to delete this??"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        var result =
                            await _myservices.deletedataexpenceservices(id);
                        print("entry deleted");
                        Gethistryexpence();
                        Navigator.pop(context);
                      },
                      child: Text("YES")),
                  ElevatedButton(
                      onPressed: () {
                        print("no button press");
                        Navigator.pop(context);
                      },
                      child: Text("NO"))
                ],
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 221, 243),
      appBar: AppBar(
        // backgroundColor: const Color.fromARGB(255, 235, 221, 243),
        title: Text("view expense history"),
      ),
      body: ListView.builder(
          itemCount: _expencehistoryList.length,
          itemBuilder: ((context, index) {
            return Card(
                child: ListTile(
              onTap: () {
                _deleteexpenceEntry(context, _expencehistoryList[index].id);
              },
              leading: Icon(Icons.money_off_rounded),
              title: Text(
                _expencehistoryList[index].amount.toString(),
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              subtitle: Text(_expencehistoryList[index].title ?? ""),
              trailing: Text(_expencehistoryList[index].created_at.toString()),
            ));
          })),
    );
  }
}
