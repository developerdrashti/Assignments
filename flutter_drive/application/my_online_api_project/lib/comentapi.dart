import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:my_online_api_project/albumapi.dart';
import 'package:my_online_api_project/commentModel.dart';

Future<List<commentModel>> fetchData() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((data) => new commentModel.fromJson(data)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class comentapi extends StatefulWidget {
  const comentapi({super.key});

  @override
  State<comentapi> createState() => _comentapiState();
}

class _comentapiState extends State<comentapi> {
  late Future<List<commentModel>> myfuturelist;

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
          title: Text("COMMENT"),
          actions: [
            IconButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => albumapi()));
                }),
                icon: Icon(Icons.navigate_next))
          ],
        ),
        body: Container(
          child: FutureBuilder<List<commentModel>>(
            future: myfuturelist,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<commentModel> mylist = snapshot.data!;

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
                            mylist[index].email.toString(),
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
