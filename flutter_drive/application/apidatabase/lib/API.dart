import 'package:apidatabase/apimodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

Future<dataModel?> submitdata(String name, String email) async {
  var response = await http.post(Uri.https("https"));
  var data = response.body;
  print(data);
  if (response.statusCode == 201) {
    String responseString = response.body;
    dataModelFromJson(responseString);
  } else {
    return null;
  }
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ElevatedButton(
            onPressed: () async {
              String name = namecontroller.text.toString();
              String email = emailcontroller.text.toString();
              dataModel? datamodel = await submitdata(name, email);
            },
            child: Text("save")),
      ]),
    );
  }
}
