import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _nameController = TextEditingController();
  var _emailController = TextEditingController();
  var _subjectController = TextEditingController();

  bool nameValidator = false;
  bool emailValidator = false;
  bool subjectValidator = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Firebase Example",
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 87, 52, 8)),
            ),
            Text(
              "________",
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 87, 52, 8)),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: 85.w,
              child: TextFormField(
                controller: _nameController,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 14, 69, 83),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  errorText: nameValidator ? "field error " : null,
                  focusColor: Colors.white,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color.fromARGB(248, 141, 115, 29),
                  ),

                  labelText: 'Enter Name',
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
                        color: Color.fromARGB(248, 255, 219, 99), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Color.fromARGB(255, 123, 246, 255),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: 85.w,
              child: TextFormField(
                controller: _emailController,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 14, 69, 83),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  errorText: emailValidator ? "field error " : null,
                  errorStyle: TextStyle(color: Colors.red),

                  focusColor: Colors.white,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Color.fromARGB(248, 141, 115, 29),
                  ),

                  labelText: 'Enter email',
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
                        color: Color.fromARGB(248, 255, 219, 99), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Color.fromARGB(255, 123, 246, 255),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: 85.w,
              child: TextFormField(
                controller: _subjectController,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 14, 69, 83),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  errorText: subjectValidator ? "field error " : null,
                  focusColor: Colors.white,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.subject,
                    color: Color.fromARGB(248, 141, 115, 29),
                  ),

                  labelText: 'Enter subject',
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
                        color: Color.fromARGB(248, 255, 219, 99), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Color.fromARGB(255, 123, 246, 255),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text('Save'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(25.w, 5.h),
                    primary: Color.fromARGB(248, 155, 134, 64),
                    onPrimary: Colors.white,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  onPressed: () {
                    setState(() {
                      _nameController.text.isEmpty
                          ? nameValidator == true
                          : nameValidator == false;
                      _emailController.text.isEmpty
                          ? emailValidator == true
                          : emailValidator == false;
                      _subjectController.text.isEmpty
                          ? subjectValidator == true
                          : subjectValidator == false;
                    });
                  },
                ),
                ElevatedButton(
                  child: Text('Update'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(25.w, 5.h),
                    primary: Color.fromARGB(248, 155, 134, 64),
                    onPrimary: Colors.white,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  onPressed: () {
                    createUser(name: "ddd", number: "1212");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future createUser({required String name, required number}) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    final user = User(id: docUser.id, name: name, number: number);

    final json = user.tojson();
    await docUser.set(json);
  }
}

class User {
  String? id;
  String? name;
  String? number;
  User({this.id = "", required this.name, required this.number});
  Map<String, dynamic> tojson() => {
        "id": id,
        "name": name,
        "number": number,
      };
}
