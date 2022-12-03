import 'package:flutter/material.dart';

class MyAddUserScreen extends StatefulWidget {
  const MyAddUserScreen({super.key});

  @override
  State<MyAddUserScreen> createState() => _MyAddUserScreenState();
}

class _MyAddUserScreenState extends State<MyAddUserScreen> {
  var _nameController = TextEditingController();
  var _contectController = TextEditingController();
  var _emailController = TextEditingController();

  var _nameValidator = false;
  var _contectValidator = false;
  var _emailValidator = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Container(
            child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  errorText: _nameValidator ? "name must be required" : null,
                  hintText: "Enter Name",
                  labelText: "Name"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  errorText: _emailValidator ? "email must be required" : null,
                  hintText: "Enter email",
                  labelText: "email"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _contectController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  errorText:
                      _contectValidator ? "contact must be required" : null,
                  hintText: "Enter contact",
                  labelText: "contact"),
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
                        if (_nameController.text.isEmpty) {
                          _nameValidator = true;
                        } else if (_emailController.text.isEmpty) {
                          _nameValidator = false;
                          _emailValidator = true;
                        } else if (_contectController.text.isEmpty) {
                          _emailValidator = false;
                          _nameValidator = false;
                          _contectValidator = true;
                        } else {
                          _nameValidator = false;
                          _contectValidator = false;
                          _emailValidator = false;
                        }
                      });
                    },
                    child: Text("save")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _contectController.text = "";
                        _emailController.text = "";
                        _nameController.text = "";
                      });
                    },
                    child: Text("clear")),
              ],
            )
          ],
        )),
      ),
    );
  }
}
