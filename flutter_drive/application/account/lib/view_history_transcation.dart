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
          leading: Padding(
            padding: EdgeInsets.only(left: 30),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          ),
          toolbarHeight: 120.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(60),
            ),
          ),
          centerTitle: true,
          title: Text(
            "View History Transcation",
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
                itemCount: _allHistory.length,
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
                          '${_allHistory[index].amount.toString()}',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          '₹${_allHistory[index].amount.toString()}',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              print("Button press");
                              _deletesavingEntry(
                                  context, _allHistory[index].id.toString());
                            },
                            icon: Icon(
                              Icons.delete,
                            ))),
                  );
                  // body: ListView.builder(
                  //     itemCount: _allHistory.length,
                  //     itemBuilder: ((context, index) {
                  //       return Card(
                  //           child: ListTile(
                  //         onTap: () {
                  //           _deletesavingEntry(context, _allHistory[index].id);
                  //         },
                  //         leading: Icon(Icons.money_off_rounded),
                  //         title: Text(
                  //           _allHistory[index].amount.toString(),
                  //           style: TextStyle(fontSize: 20, color: Colors.blue),
                  //         ),
                  //         subtitle: Text(_allHistory[index].title ?? ""),
                  //         trailing: Text(_allHistory[index].type ?? ""),
                  //       ));
                })),
          )
        ]));
  }
}
