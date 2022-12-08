import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

class income extends StatefulWidget {
  const income({super.key});

  @override
  State<income> createState() => _incomeState();
}

class _incomeState extends State<income> {
  var dateinput = TextEditingController();
  final _dateC = TextEditingController();
  final _timeC = TextEditingController();

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
                        decoration: InputDecoration(
                          hintText: " Enter transaction name",
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
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter transaction amount",
                          border: InputBorder.none,
                          fillColor: Colors.white,
                        ),
                      ),
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
                          decoration: InputDecoration.collapsed(
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
                          decoration: InputDecoration.collapsed(
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
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter transaction amount",
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
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => income())));
                        }),
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
