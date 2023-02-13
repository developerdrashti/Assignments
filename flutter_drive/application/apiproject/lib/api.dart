import 'dart:convert';

import 'package:apiproject/apimodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Future<project> dattifetch() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return project.fromJson(data);
    } else {
      return project.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<project>(
        future: dattifetch(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.users!.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(11),
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                        '${snapshot.data!.users![index].image}',
                        height: 50,
                      ),
                      Text("${snapshot.data!.users![index].firstName}"),
                      Text("${snapshot.data!.users![index].lastName}"),
                      Text("${snapshot.data!.users![index].maidenName}"),
                      Text("${snapshot.data!.users![index].age}"),
                      Text("${snapshot.data!.users![index].gender}"),
                      Text("${snapshot.data!.users![index].email}"),
                      Text("${snapshot.data!.users![index].phone}"),
                      Text("${snapshot.data!.users![index].email}"),
                      Text("${snapshot.data!.users![index].username}"),
                      Text("${snapshot.data!.users![index].password}"),
                      Text("${snapshot.data!.users![index].birthDate}"),
                      Text("${snapshot.data!.users![index].bloodGroup}"),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {}
          return Center(child: Text("Loading.. "));
        },
      ),
    );
  }
}
