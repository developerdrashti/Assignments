import 'package:account/alltranscation_model.dart';
import 'package:account/myService.dart';

import 'package:account/mybuget_model.dart';
import 'package:account/myexpence_model.dart';
import 'package:account/view_history_expense.dart';
import 'package:account/view_history_transcation.dart';
import 'package:account/view_histroy_budget.dart';

import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:intl/intl.dart';
import 'package:path/path.dart';

class budgetMainPage extends StatefulWidget {
  const budgetMainPage({super.key});

  @override
  State<budgetMainPage> createState() => _budgetMainPageState();
}

class _budgetMainPageState extends State<budgetMainPage> {
  List budgetText = ["My Budget", "My Expence"];
  List budgetTitleList = [myBudget(), myexpence()];
  List imgList = [
    "assets/images/2d.png",
    //"assets/images/3dimage.png",
    "assets/images/4d.png"
  ];

  int CurrentTab = 0;
  List<Widget> body = [const myBudget(), const myexpence()];
  int addmoney = 0;
  int AddEpense = 0;
  int addbalance = 0;
  List<MyBudget> HistrybudgetList = <MyBudget>[];
  List<MyExpence> _expencehistoryList = <MyExpence>[];
  var _myservices = Myservices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GethistryBudget();
    Gethistryexpence();
  }

  GethistryBudget() async {
    var result = await _myservices.historyGetAllBudget();
    HistrybudgetList = <MyBudget>[];

    print("------$result");

    result.forEach((Entry) {
      setState(() {
        var _mybudget = MyBudget();

        _mybudget.amount = Entry['amount'];

        HistrybudgetList.add(_mybudget);
        addmoney += _mybudget.amount!;

        print("-----------addmoney-------$Entry=======");
        print("---------addmoney--------$addmoney-----");
      });
    });
  }

  Gethistryexpence() async {
    var result = await _myservices.historyGetAllexpence();
    _expencehistoryList = <MyExpence>[];

    print("------$result");

    result.forEach((Entry) {
      setState(() {
        var myexpense = MyExpence();

        myexpense.amount = Entry['amount'];

        _expencehistoryList.add(myexpense);
        AddEpense = myexpense.amount!;
        // addmoney = Entry['amount'];
        print("---------expense>>>>${AddEpense}>}-----");
      });
    });
  }

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
              Padding(
                padding: EdgeInsets.only(left: 70, top: 30),
                child: Text(
                  "YOUR BALANCE",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                "RS.${addbalance = addmoney - AddEpense}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
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
                height: MediaQuery.of(context).size.width - 100,
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
              Expanded(
                child: GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => viewsaving())));
                  }),
                  child: Text("Show All Transaction"),
                ),
              )
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
      backgroundColor: const Color.fromARGB(255, 235, 221, 243),
      appBar: AppBar(
          leading: IconButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => viewBudget()));
              }),
              icon: Icon(Icons.navigate_next))),
      body: Container(
        margin: EdgeInsets.only(top: 130),
        width: double.maxFinite,
        child: Column(
          children: [
            Text(
              "BUDGET",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 42, 42, 100),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 42, 42, 100),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                style: TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                controller: monthcontroller,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.calendar_month,
                    color: Color.fromARGB(255, 215, 211, 211),
                  ),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  hintText: "Enter Month",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                  labelText: "month",
                  errorText: monthValidator ? "field error " : null,
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 215, 211, 211), width: 2),
                  ),
                ),
                onTap: () {},
                cursorColor: Colors.brown,
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 42, 42, 100),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                style: TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                keyboardType: TextInputType.number,
                controller: amountController,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.money,
                    color: Color.fromARGB(255, 215, 211, 211),
                  ),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  hintText: "Enter amount",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                  labelText: "amount",
                  errorText: amountValidator ? "field error " : null,
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                onTap: () {},
                cursorColor: Colors.brown,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
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
                        mybudget.amount =
                            int.parse(amountController.text.toString());

                        var now = new DateTime.now();
                        var formatter = new DateFormat('dd-MM-yyyy');
                        formattedDate = formatter.format(now);

                        mybudget.created_at = formattedDate;

                        var result = myservices.insertBudgetService(mybudget);
                        print("============$result=================");

                        print("============$formattedDate=================");
                        var _mybsaving = MySaving();
                        _mybsaving.title = monthcontroller.text.toString();
                        _mybsaving.amount =
                            int.parse(amountController.text.toString());

                        _mybsaving.type = "Income";

                        var resultShaving =
                            myservices.insertSAvings(_mybsaving);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => viewBudget(),
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

class myexpence extends StatefulWidget {
  const myexpence({super.key});

  @override
  State<myexpence> createState() => _myexpenceState();
}

class _myexpenceState extends State<myexpence> {
  var monthcontroller = TextEditingController();
  var amountController = TextEditingController();
  var numberControler = TextEditingController();
  var titleControler = TextEditingController();

  var monthValidator = false;
  var amountValidator = false;
  var titlevalidator = false;
  var myservices = Myservices();
  var formattedDate;

  Null get my_expence => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 221, 243),
      appBar: AppBar(
          leading: IconButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewExpence()));
              }),
              icon: Icon(Icons.navigate_next))),
      body: Container(
        margin: EdgeInsets.only(top: 80),
        width: double.maxFinite,
        child: Column(
          children: [
            Text(
              "EXPENCE",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 42, 42, 100),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 42, 42, 100),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                style: TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                controller: titleControler,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.title_sharp,
                    color: Color.fromARGB(255, 215, 211, 211),
                  ),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  hintText: "Enter title",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                  labelText: "title",
                  errorText: monthValidator ? "field error " : null,
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 215, 211, 211), width: 2),
                  ),
                ),
                onTap: () {},
                cursorColor: Colors.brown,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 42, 42, 100),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                style: TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                controller: monthcontroller,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.calendar_month,
                    color: Color.fromARGB(255, 215, 211, 211),
                  ),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  hintText: "Enter Month",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                  labelText: "month",
                  errorText: monthValidator ? "field error " : null,
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 215, 211, 211), width: 2),
                  ),
                ),
                onTap: () {},
                cursorColor: Colors.brown,
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 42, 42, 100),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                style: TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                controller: amountController,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.currency_rupee,
                    color: Color.fromARGB(255, 215, 211, 211),
                  ),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                  hintText: "Enter amount",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                  labelText: "amount",
                  errorText: monthValidator ? "field error " : null,
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 215, 211, 211), width: 2),
                  ),
                ),
                onTap: () {},
                cursorColor: Colors.brown,
              ),
            ),
            SizedBox(height: 30),
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
                        titleControler.text.isEmpty
                            ? titlevalidator = true
                            : titlevalidator = false;
                      });

                      if (monthValidator == false &&
                          amountValidator == false &&
                          titlevalidator == false) {
                        var myexpence = MyExpence();
                        myexpence.month = monthcontroller.text;
                        myexpence.amount =
                            int.parse(amountController.text.toString());
                        myexpence.title = titleControler.text.toString();

                        var now = new DateTime.now();
                        var formatter = new DateFormat('dd-MM-yyyy');
                        formattedDate = formatter.format(now);

                        myexpence.created_at = formattedDate.toString();

                        var result =
                            myservices.insertexpenceservices(myexpence);
                        print("=====>>>>>>=======$result=================");

                        print("============$formattedDate=================");
                        var _mySaving = MySaving();
                        _mySaving.title = monthcontroller.text.toString();
                        _mySaving.amount =
                            int.parse(amountController.text.toString());

                        _mySaving.type = "Expense";

                        var resultShaving = myservices.insertSAvings(_mySaving);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewExpence(),
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
            ),
          ],
        ),
      ),
    );
  }
}

//saving
// class mysaving extends StatefulWidget {
//   const mysaving({super.key});

//   get id => null;

//   get amount => null;

//   get title => null;

//   get created_at => null;

//   @override
//   State<mysaving> createState() => _mysavingState();
// }

// class _mysavingState extends State<mysaving> {
//   var monthcontroller = TextEditingController();
//   var amountController = TextEditingController();
//   var numberControler = TextEditingController();
//   var titleControler = TextEditingController();

//   var monthValidator = false;
//   var amountValidator = false;
//   var titlevalidator = false;
//   var myservices = Myservices();
//   var formattedDate;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 235, 221, 243),
//       body: Container(
//         margin: EdgeInsets.only(top: 80),
//         width: double.maxFinite,
//         child: Column(
//           children: [
//             Text(
//               "SAVING",
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 42, 42, 100),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 42, 42, 100),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TextFormField(
//                 style: TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
//                 controller: titleControler,
//                 decoration: InputDecoration(
//                   icon: Icon(
//                     Icons.title,
//                     color: Color.fromARGB(255, 215, 211, 211),
//                   ),
//                   errorStyle: TextStyle(
//                     color: Colors.red,
//                   ),
//                   hintText: "Enter title",
//                   hintStyle:
//                       TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
//                   labelText: "title",
//                   errorText: monthValidator ? "field error " : null,
//                   labelStyle:
//                       TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Color.fromARGB(255, 215, 211, 211), width: 2),
//                   ),
//                 ),
//                 onTap: () {},
//                 cursorColor: Colors.brown,
//               ),
//             ),
//             SizedBox(height: 30),
//             Container(
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 42, 42, 100),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TextFormField(
//                 style: TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
//                 controller: monthcontroller,
//                 decoration: InputDecoration(
//                   icon: Icon(
//                     Icons.calendar_month,
//                     color: Color.fromARGB(255, 215, 211, 211),
//                   ),
//                   errorStyle: TextStyle(
//                     color: Colors.red,
//                   ),
//                   hintText: "Enter month",
//                   hintStyle:
//                       TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
//                   labelText: "month",
//                   errorText: monthValidator ? "field error " : null,
//                   labelStyle:
//                       TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Color.fromARGB(255, 215, 211, 211), width: 2),
//                   ),
//                 ),
//                 onTap: () {},
//                 cursorColor: Colors.brown,
//               ),
//             ),
//             SizedBox(height: 30),
//             Container(
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 42, 42, 100),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TextFormField(
//                 style: TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
//                 controller: amountController,
//                 decoration: InputDecoration(
//                   icon: Icon(
//                     Icons.currency_rupee,
//                     color: Color.fromARGB(255, 215, 211, 211),
//                   ),
//                   errorStyle: TextStyle(
//                     color: Colors.red,
//                   ),
//                   hintText: "Enter amount",
//                   hintStyle:
//                       TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
//                   labelText: "amount",
//                   errorText: monthValidator ? "field error " : null,
//                   labelStyle:
//                       TextStyle(color: Color.fromARGB(255, 215, 211, 211)),
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Color.fromARGB(255, 215, 211, 211), width: 2),
//                   ),
//                 ),
//                 onTap: () {},
//                 cursorColor: Colors.brown,
//               ),
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         //for validation we fecth details from conntroller and check is it empty or not
//                         monthcontroller.text.isEmpty
//                             ? monthValidator = true
//                             : monthValidator = false;
//                         amountController.text.isEmpty
//                             ? amountValidator = true
//                             : amountValidator = false;
//                         titleControler.text.isEmpty
//                             ? titlevalidator = true
//                             : titlevalidator = false;
//                       });

//                       if (monthValidator == false &&
//                           amountValidator == false &&
//                           titlevalidator == false) {
//                         var mysaving = MySaving();
//                         mysaving.month = monthcontroller.text;
//                         mysaving.amount = int.parse(amountController.text);
//                         mysaving.title = titleControler.text.toString();

//                         var now = new DateTime.now();
//                         var formatter = new DateFormat('dd-MM-yyyy');
//                         formattedDate = formatter.format(now);

//                         mysaving.created_at = formattedDate.toString();

//                         var result = myservices.insertsavingservices(mysaving);
//                         print("============$result=================");

//                         print("============$formattedDate=================");

//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => viewSaving(),
//                             ));
//                       }
//                     },
//                     child: Text("Save Data")),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         monthcontroller.text = "";
//                         amountController.text = "";
//                       });
//                     },
//                     child: Text("Clear")),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
