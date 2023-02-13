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
          leading: Padding(
            padding: EdgeInsets.only(left: 30),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => budgetMainPage())));
                  },
                  icon: Icon(Icons.home)),
            ),
          ],
          toolbarHeight: 120.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(60),
            ),
          ),
          centerTitle: true,
          title: Text(
            "View Expense History",
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 244, 244, 251),
                fontWeight: FontWeight.w400),
          ),
          backgroundColor: Color.fromARGB(255, 110, 86, 11),
        ),
        body: Column(children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _expencehistoryList.length,
                itemBuilder: ((context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    elevation: 10,
                    child: ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.arrow_circle_up_sharp,
                          color: Colors.green,
                          size: 50,
                        ),
                        title: Text(
                          '${_expencehistoryList[index].month.toString()}',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          '₹${_expencehistoryList[index].amount.toString()}',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            _deleteexpenceEntry(context,
                                _expencehistoryList[index].id.toString());
                          },
                          icon: Icon(Icons.delete),
                        )),
                  );
                  // body: ListView.builder(
                  //     itemCount: _expencehistoryList.length,
                  //     itemBuilder: ((context, index) {
                  //       return Card(
                  //           child: ListTile(
                  //         onTap: () {
                  //           _deleteexpenceEntry(context, _expencehistoryList[index].id);
                  //         },
                  //         leading: Icon(Icons.money_off_rounded),
                  //         title: Text(
                  //           _expencehistoryList[index].amount.toString(),
                  //           style: TextStyle(fontSize: 20, color: Colors.blue),
                  //         ),
                  //         subtitle: Text(_expencehistoryList[index].title ?? ""),
                  //         trailing: Text(_expencehistoryList[index].created_at.toString()),
                  //       ));
                })),
          )
        ]));
  }
}
