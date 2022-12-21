import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:my_online_api_project/mymodelimage.dart';

Future<List<MyModelimage>> fetchdata() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  if (response.statusCode == 200) {
    List jsonResponce = jsonDecode(response.body);
    List<MyModelimage> mylist =
        jsonResponce.map((data) => new MyModelimage.fromjson(data)).toList();

    return mylist;
  } else {
    throw Exception("Failed to Load album");
  }
}

class imageApi extends StatefulWidget {
  const imageApi({super.key});

  @override
  State<imageApi> createState() => _CommentApiState();
}

class _CommentApiState extends State<imageApi> {
  late Future<List<MyModelimage>> myfutureList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfutureList = fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Api"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.navigate_next))
        ],
      ),
      body: Container(
        child: FutureBuilder<List<MyModelimage>>(
          future: myfutureList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    MyModelimage modelImage = snapshot.data![index];

                    return Container(
                      height: 150,
                      width: 150,
                      child: Image.network(modelImage.url),
                    );
                  });
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
