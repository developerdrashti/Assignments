import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_online_api_project/comentapi.dart';
import 'package:my_online_api_project/mymodels.dart';
import 'package:http/http.dart' as http;

Future<List<MyModel>> fetchData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((data) => new MyModel.fromJson(data)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class MyApiData extends StatefulWidget {
  const MyApiData({super.key});

  @override
  State<MyApiData> createState() => _MyApiDataState();
}

class _MyApiDataState extends State<MyApiData> {
  late Future<List<MyModel>> myfuturelist;

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
          title: Text("POST"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => comentapi(),
                      ));
                },
                icon: Icon(Icons.navigate_next_outlined))
          ],
        ),
        body: Container(
          child: FutureBuilder<List<MyModel>>(
            future: myfuturelist,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<MyModel> mylist = snapshot.data!;

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
                            mylist[index].title,
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(mylist[index].body)
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
