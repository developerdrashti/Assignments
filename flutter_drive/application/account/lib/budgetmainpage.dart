import 'package:account/myService.dart';

import 'package:account/mybuget_model.dart';
import 'package:account/view_histry.dart';

import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:intl/intl.dart';

class budgetMainPage extends StatefulWidget {
  const budgetMainPage({super.key});

  @override
  State<budgetMainPage> createState() => _budgetMainPageState();
}

class _budgetMainPageState extends State<budgetMainPage> {
  List budgetText = ["My Budget", "My Saving", "My Expenses"];
  List budgetTitleList = [myBudget(), mysaving(), myExpenses()];
  List imgList = [
    "assets/images/2d.png",
    "assets/images/3dimage.png",
    "assets/images/4d.png"
  ];

  int CurrentTab = 0;
  List<Widget> body = [const myBudget(), const mysaving(), myExpenses()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 1,
          fixedColor: Colors.deepPurpleAccent,
          backgroundColor: const Color.fromARGB(255, 235, 221, 243),
          onTap: (value) {
            setState(() {
              CurrentTab = value;
            });
          },
          currentIndex: CurrentTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Form",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notification",
            ),
          ]),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 235, 221, 243),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: Icon(
                  Icons.cancel_outlined,
                  color: Colors.black,
                  size: 25,
                ),
                title: Text(
                  "Add transaction",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                color: Colors.black12,
                height: 1,
                width: double.maxFinite,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 200,
                child: Image.asset(
                  "assets/images/2d.png",
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                "What kind of \ntransaction it is? ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(146, 0, 0, 0),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width - 58,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: budgetTitleList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    budgetTitleList[index])));
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 85,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Center(
                            child: ListTile(
                              leading: Image.asset(
                                imgList[index],
                                width: 40,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                budgetText[index],
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold),
                              ),
                              trailing: const Icon(
                                Icons.forward,
                                size: 30,
                              ),
                            ),
                          )),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// budget

class myBudget extends StatefulWidget {
  const myBudget({super.key});

  @override
  State<myBudget> createState() => _myBudgetState();
}

class _myBudgetState extends State<myBudget> {
  var monthcontroller = TextEditingController();
  var amountController = TextEditingController();
  var numberControler = TextEditingController();

  var monthValidator = false;
  var amountValidator = false;
  var myservices = Myservices();
  var formattedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("month"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.black,
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Text(
              "Add user",
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
            TextFormField(
              controller: monthcontroller,
              decoration: InputDecoration(
                icon: Icon(Icons.calendar_month),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
                hintText: "Enter Month",
                labelText: "month",
                errorText: monthValidator ? "field error " : null,
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              onTap: () {},
              cursorColor: Colors.brown,
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: InputDecoration(
                icon: Icon(Icons.money),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
                hintText: "Enter amount",
                labelText: "amount",
                errorText: amountValidator ? "field error " : null,
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              onTap: () {},
              cursorColor: Colors.brown,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        //for validation we fecth details from conntroller and check is it empty or not
                        monthcontroller.text.isEmpty
                            ? monthValidator = true
                            : monthValidator = false;
                        amountController.text.isEmpty
                            ? amountValidator = true
                            : amountValidator = false;
                      });

                      if (monthValidator == false && amountValidator == false) {
                        var mybudget = MyBudget();
                        mybudget.month = monthcontroller.text;
                        mybudget.amount = int.parse(amountController.text);

                        var now = new DateTime.now();
                        var formatter = new DateFormat('dd-MM-yyyy');
                        formattedDate = formatter.format(now);

                        mybudget.created_at = formattedDate;

                        var result = myservices.insertBudgetService(mybudget);
                        print("============$result=================");

                        print("============$formattedDate=================");

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => viewhisry(),
                            ));
                      }
                    },
                    child: Text("Save Data")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        monthcontroller.text = "";
                        amountController.text = "";
                      });
                    },
                    child: Text("Clear")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
//expense

class myExpenses extends StatefulWidget {
  const myExpenses({super.key});

  @override
  State<myExpenses> createState() => _myExpensesState();
}

class _myExpensesState extends State<myExpenses> {
  final _userValue = TextEditingController();
  final _userPassword = TextEditingController();
  var _monthcontroller = TextEditingController();
  var _myservices = Myservices();
  var myBudget_month;
  List<MyBudget> _budgetList = <MyBudget>[];
  var mybudget_month = 0;

  _fetchbudgetByMonth(monthname) async {
    var result = await _myservices.fetchDataBudgetServices(monthname);
    _budgetList = <MyBudget>[];
    print("------>result $result");
    result.forEach((Entry) {
      setState(() {
        print("\n  Entryyyy------->$Entry");
        var _mybudget = MyBudget();
        _mybudget.id = Entry['id'];
        _mybudget.month = Entry['month'];
        _mybudget.amount = Entry['amount'];
        _budgetList.add(_mybudget);
        myBudget_month += _mybudget.amount!;
        print("----->budget list:$_budgetList");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 204, 223),
      body: Container(
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 40, right: 10, left: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.grey,
              child: Container(
                padding: EdgeInsets.only(left: 12),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: " Enter budget Title for e.g. JAN-2022",
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, right: 10, left: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.grey,
              child: Container(
                padding: EdgeInsets.only(left: 12),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "month",
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, right: 10, left: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.grey,
              child: Container(
                padding: EdgeInsets.only(left: 12),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Amount",
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class mysaving extends StatefulWidget {
  const mysaving({super.key});

  @override
  State<mysaving> createState() => _mysavingState();
}

class _mysavingState extends State<mysaving> {
  var monthcontroller = TextEditingController();
  var amountController = TextEditingController();
  var numberControler = TextEditingController();

  var monthValidator = false;
  var amountValidator = false;
  var myservices = Myservices();
  var formattedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("month"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.black,
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Text(
              "Add user",
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
            // TextFormField(
            //   controller: monthcontroller,
            //   decoration: InputDecoration(
            //     icon: Icon(Icons.title),
            //     errorStyle: TextStyle(
            //       color: Colors.red,
            //     ),
            //     hintText: "Enter Title",
            //     labelText: "Title",
            //     errorText: monthValidator ? "field error " : null,
            //     labelStyle: TextStyle(color: Colors.white),
            //     focusedBorder: UnderlineInputBorder(
            //       borderSide: BorderSide(color: Colors.white, width: 2),
            //     ),
            //   ),
            //   onTap: () {},
            //   cursorColor: Colors.brown,
            // ),
            SizedBox(height: 20),
            TextFormField(
              controller: monthcontroller,
              decoration: InputDecoration(
                icon: Icon(Icons.calendar_month),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
                hintText: "Enter Month",
                labelText: "month",
                errorText: monthValidator ? "field error " : null,
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              onTap: () {},
              cursorColor: Colors.brown,
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: InputDecoration(
                icon: Icon(Icons.money),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
                hintText: "Enter amount",
                labelText: "amount",
                errorText: amountValidator ? "field error " : null,
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              onTap: () {},
              cursorColor: Colors.brown,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        //for validation we fecth details from conntroller and check is it empty or not
                        monthcontroller.text.isEmpty
                            ? monthValidator = true
                            : monthValidator = false;
                        amountController.text.isEmpty
                            ? amountValidator = true
                            : amountValidator = false;
                      });

                      if (monthValidator == false && amountValidator == false) {
                        var mybudget = MyBudget();
                        mybudget.month = monthcontroller.text;
                        mybudget.amount = int.parse(amountController.text);

                        var now = new DateTime.now();
                        var formatter = new DateFormat('dd-MM-yyyy');
                        formattedDate = formatter.format(now);

                        mybudget.created_at = formattedDate;

                        var result = myservices.insertBudgetService(mybudget);
                        print("============$result=================");

                        print("============$formattedDate=================");

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => viewhisry(),
                            ));
                      }
                    },
                    child: Text("Save Data")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        monthcontroller.text = "";
                        amountController.text = "";
                      });
                    },
                    child: Text("Clear")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
