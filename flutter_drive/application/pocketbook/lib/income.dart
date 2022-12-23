import 'package:flutter/material.dart';
import 'package:pocketbook/incomemodel.dart';
import 'package:pocketbook/services.dart';
import 'package:pocketbook/view_income_history.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

class income extends StatefulWidget {
  const income({super.key});

  @override
  State<income> createState() => _incomeState();
}

class _incomeState extends State<income> {
  var _nameController = TextEditingController();
  var _amountController = TextEditingController();
  var _modeController = TextEditingController();
  var services = Myservices();
  //var dateinput = TextEditingController();
  final _dateC = TextEditingController();
  final _timeC = TextEditingController();
  bool _nameValidator = false;
  bool _amountValidator = false;
  bool _modeValidator = false;
  //bool _dateinputValidator = false;
  bool _datecValidator = false;
  bool _timecValidator = false;

  ///Date
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(2000);
  DateTime last = DateTime(2025);

  ///Time
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 223, 204, 223),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
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
                        controller: _nameController,
                        decoration: InputDecoration(
                          errorText: _nameValidator ? "field not valid" : null,
                          hintText: " Enter transaction name",
                          border: InputBorder.none,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 40.w,
                  child: TextFormField(
                    controller: _amountController,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 14, 69, 83),
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      errorText: _amountValidator ? "field error " : null,
                      focusColor: Colors.white,
                      //add prefix icon
                      prefixIcon: Icon(
                        Icons.currency_rupee_outlined,
                        color: Color.fromARGB(248, 141, 115, 29),
                      ),

                      labelText: 'Amount',

                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(248, 141, 115, 29),
                        fontWeight: FontWeight.w600,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(248, 255, 219, 99),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Color.fromARGB(255, 123, 246, 255),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 8.h,
                        width: 35.w,
                        padding: EdgeInsets.all(2.8.h),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)),
                        child: TextFormField(
                          controller: _dateC,
                          onTap: () => displayDatePicker(context),
                          keyboardType: TextInputType.none,
                          cursorColor: Colors.white,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(146, 22, 24, 52),
                          ),
                          decoration: InputDecoration(
                            errorText:
                                _datecValidator ? "field not valid" : null,
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            hintText: 'Enter Date',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Expanded(
                      child: Container(
                        height: 8.h,
                        width: 30.w,
                        padding: EdgeInsets.all(2.8.h),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(80)),
                        child: TextFormField(
                          controller: _timeC,
                          onTap: () => displayTimePicker(context),
                          keyboardType: TextInputType.none,
                          cursorColor: Colors.white,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(146, 22, 24, 52),
                          ),
                          decoration: InputDecoration(
                            errorText:
                                _timecValidator ? "field not valid" : null,
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            hintText: 'Enter Time',
                          ),
                        ),
                      ),
                    ),
                  ],
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
                        controller: _modeController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Enter mode",
                          border: InputBorder.none,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _nameController.text.isEmpty
                                ? _nameValidator = true
                                : _nameValidator = false;
                            _amountController.text.isEmpty
                                ? _amountValidator = true
                                : _amountValidator = false;
                            _dateC.text.isEmpty
                                ? _datecValidator = true
                                : _datecValidator = false;
                            _timeC.text.isEmpty
                                ? _timecValidator = true
                                : _timecValidator = false;
                            _modeController.text.isEmpty
                                ? _modeValidator = true
                                : _modeValidator = false;
                          });
                          print(">>>>>>>>>>>>>>Preess success>>>>>>>>>>>>>>>");

                          if (_nameValidator == false &&
                              _amountValidator == false &&
                              _datecValidator == false &&
                              _timecValidator == false &&
                              _modeValidator == false) {
                            var _income = MyBudget();
                            _income.amount =
                                int.parse(_amountController.text.toString());
                            _income.name = _nameController.text.toString();
                            _income.date = _dateC.text.toString();
                            _income.mode = _modeController.text.toString();
                            _income.time = _timeC.text.toString();
                            var result = services.insertBudgetService(_income);
                            print(">>>>>>>>>>>>>>${result}>>>>>>>>>>>>>>>");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        view_income_history())));
                          }
                        },
                        child: Text("save")),
                    ElevatedButton(
                        onPressed: (() {
                          // Navigator.push(context, MaterialPageRoute(builder: ((context) => )))
                        }),
                        child: Text("clear"))
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Future displayDatePicker(BuildContext context) async {
    var date = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: initial,
      lastDate: last,
    );

    if (date != null) {
      setState(() {
        _dateC.text = date.toLocal().toString().split(" ")[0];
      });
    }
  }

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        _timeC.text = "${time.hour}:${time.minute}";
      });
    }
  }
}
