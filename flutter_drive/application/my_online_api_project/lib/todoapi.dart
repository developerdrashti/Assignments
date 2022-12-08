import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:my_online_api_project/albumapi.dart';
import 'package:my_online_api_project/firstapi.dart';
import 'package:my_online_api_project/todoapi.dart';
import 'package:my_online_api_project/todomodel.dart';

Future<List<todomodel>> fetchData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((data) => new todomodel.fromJson(data)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class todoapi extends StatefulWidget {
  const todoapi({super.key});

  @override
  State<todoapi> createState() => _todoapiState();
}

class _todoapiState extends State<todoapi> {
  late Future<List<todomodel>> myfuturelist;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfuturelist = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TODO"),
          actions: [
            IconButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApiData()));
                }),
                icon: Icon(Icons.navigate_next))
          ],
        ),
        body: Container(
          child: FutureBuilder<List<todomodel>>(
            future: myfuturelist,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<todomodel> mylist = snapshot.data!;

                return ListView.builder(
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Text(
                            mylist[index].id.toString(),
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            mylist[index].completed.toString(),
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else if (snapshot.hasError) {}
              return CircularProgressIndicator();
            },
          ),
        ));
  }
}
