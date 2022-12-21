import 'package:account/budgetmainpage.dart';
import 'package:account/alltranscation_model.dart';
import 'package:account/myService.dart';
import 'package:account/mybuget_model.dart';
import 'package:account/myexpence_model.dart';
import 'package:flutter/material.dart';

class viewsaving extends StatefulWidget {
  const viewsaving({super.key});

  @override
  State<viewsaving> createState() => viewhisryState();
}

class viewhisryState extends State<viewsaving> {
  List<MySaving> _allHistory = <MySaving>[];
  var _myservices = Myservices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Gethistrysaving();
  }

  Gethistrysaving() async {
    var result = await _myservices.historyGetAllsaving();
    _allHistory = <MySaving>[];

    print("------$result");

    result.forEach((Entry) {
      setState(() {
        var mysaving = MySaving();
        mysaving.id = Entry['id'];
        mysaving.title = Entry['title'];
        mysaving.amount = Entry['amount'];
        mysaving.type = Entry['type'];
        _allHistory.add(mysaving);
        // addmoney = Entry['amount'];
        // print("---------addmoney--------$addmoney-----");
      });
    });
  }

  _deletesavingEntry(BuildContext context, id) {
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
                            await _myservices.deletedatasavingservices(id);
                        print("entry deleted");
                        Gethistrysaving();
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
        title: Text("view transaction history"),
      ),
      body: ListView.builder(
          itemCount: _allHistory.length,
          itemBuilder: ((context, index) {
            return Card(
                child: ListTile(
              onTap: () {
                _deletesavingEntry(context, _allHistory[index].id);
              },
              leading: Icon(Icons.money_off_rounded),
              title: Text(
                _allHistory[index].amount.toString(),
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              subtitle: Text(_allHistory[index].title ?? ""),
              trailing: Text(_allHistory[index].type ?? ""),
            ));
          })),
    );
  }
}
