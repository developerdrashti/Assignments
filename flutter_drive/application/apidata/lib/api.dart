import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'apimodel.dart';

class photo extends StatefulWidget {
  const photo({super.key});

  @override
  State<photo> createState() => _photoState();
}

class _photoState extends State<photo> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          height: 130,
          //width: 100,
          color: Colors.greenAccent,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          margin: const EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'user id:data',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  ' Id:data',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Title:data',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Body:data',
                  style: TextStyle(fontSize: 18),
                ),
              ]),
        );
      },
    );
  }

  Future<List<Sampleposts>> getData() async {
    final Response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(Response.body.toString());
    if (Response.statusCode == 200) {
      for (Map index in data) {
        Sampleposts.add(Sampleposts.fromJson(index));
      }
      return Sampleposts.
    }
  }
}
