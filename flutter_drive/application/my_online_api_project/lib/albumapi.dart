import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:my_online_api_project/albummodel.dart';
import 'package:my_online_api_project/todoapi.dart';

Future<List<albumModel>> fetchData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((data) => new albumModel.fromJson(data)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class albumapi extends StatefulWidget {
  const albumapi({super.key});

  @override
  State<albumapi> createState() => _albumapiState();
}

class _albumapiState extends State<albumapi> {
  late Future<List<albumModel>> myfuturelist;

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
          title: Text("ALBUM"),
          actions: [
            IconButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => todoapi()));
                }),
                icon: Icon(Icons.navigate_next))
          ],
        ),
        body: Container(
          child: FutureBuilder<List<albumModel>>(
            future: myfuturelist,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<albumModel> mylist = snapshot.data!;

                return ListView.builder(
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print("=====> ${mylist[index].id}");
                      },
                      child: Column(
                        children: [
                          Text(
                            mylist[index].id.toString(),
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(mylist[index].title.toString())
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
