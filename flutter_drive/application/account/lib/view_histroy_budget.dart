import 'package:account/budgetmainpage.dart';
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
            padding: EdgeInsets.only(left: 30),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => budgetMainPage()));
                },
                icon: Icon(Icons.arrow_back)),
          )
        ],
        toolbarHeight: 120.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(60),
          ),
        ),
        centerTitle: true,
        title: Text(
          "View Budget History",
          style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 244, 244, 251),
              fontWeight: FontWeight.w400),
        ),
        backgroundColor: Color.fromARGB(255, 110, 86, 11),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: HistrybudgetList.length,
                itemBuilder: ((context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    elevation: 10,
                    child: ListTile(
                        onTap: () {
                          _deletebudgetEntry(
                              context, HistrybudgetList[index].id.toString());
                        },
                        leading: Icon(
                          Icons.arrow_circle_up_sharp,
                          color: Colors.green,
                          size: 50,
                        ),
                        title: Text(
                          '${HistrybudgetList[index].month.toString()}',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          '₹${HistrybudgetList[index].amount.toString()}',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(
                          Icons.delete,
                        )),
                  );

                  // ListTile(
                  //   shape: RoundedRectangleBorder(
                  //     side: BorderSide(color: Colors.white70, width: 0.1),
                  //   ),
                  //   leading: incos,
                  //   title: Text(
                  //     HistryList[index].title.toString(),
                  //     style: TextStyle(
                  //       fontSize: 18,
                  //       fontWeight: FontWeight.w500,
                  //     ),
                  //   ),
                  //   subtitle: Text('₹${HistryList[index].amount.toString()}',
                  //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  // ),

                  // Container(
                  //   margin: EdgeInsets.all(10),
                  //   child: Card(
                  //       child: ListTile(
                  //           onTap: () {},
                  //           leading: Icon(Icons.money_off_rounded),
                  //           title: Text(
                  //             HistrybudgetList[index].amount.toString(),
                  //             style: TextStyle(fontSize: 20, color: Colors.blue),
                  //           ),
                  //           subtitle: Text(HistrybudgetList[index].month ?? ""),
                  //           trailing:
                  //               Text(HistrybudgetList[index].created_at.toString()),
                  //           onLongPress: (() {
                  //             _deletebudgetEntry(context, HistrybudgetList[index].id);
                  //           }))),
                  // );
                })),
          ),
        ],
      ),
    );
  }
}
