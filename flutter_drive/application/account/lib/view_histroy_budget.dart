import 'package:account/myService.dart';
import 'package:account/mybuget_model.dart';
import 'package:flutter/material.dart';

class viewBudget extends StatefulWidget {
  const viewBudget({super.key});

  @override
  State<viewBudget> createState() => viewhisryState();
}

class viewhisryState extends State<viewBudget> {
  List<MyBudget> HistrybudgetList = <MyBudget>[];
  var _myservices = Myservices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GethistryBudget();
  }

  GethistryBudget() async {
    var result = await _myservices.historyGetAllBudget();
    HistrybudgetList = <MyBudget>[];

    print("------$result");

    result.forEach((Entry) {
      setState(() {
        var _mybudget = MyBudget();
        _mybudget.id = Entry['id'];
        _mybudget.month = Entry['month'];
        _mybudget.amount = Entry['amount'];
        _mybudget.created_at = Entry['created_at'];
        HistrybudgetList.add(_mybudget);
        // addmoney = Entry['amount'];
        // print("---------addmoney--------$addmoney-----");
      });
    });
  }

  _deletebudgetEntry(BuildContext context, id) {
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
                            await _myservices.deletedatabudgetservices(id);
                        print("entry deleted");
                        GethistryBudget();
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
        title: Text("view budget history"),
        
       
      ),
      body: ListView.builder(
          itemCount: HistrybudgetList.length,
          itemBuilder: ((context, index) {
            return Card(
                child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.money_off_rounded),
                    title: Text(
                      HistrybudgetList[index].amount.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    subtitle: Text(HistrybudgetList[index].month ?? ""),
                    trailing:
                        Text(HistrybudgetList[index].created_at.toString()),
                    onLongPress: (() {
                      _deletebudgetEntry(context, HistrybudgetList[index].id);
                    })));
          })),
    );
  }
}
