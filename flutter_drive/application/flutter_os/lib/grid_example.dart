import 'package:flutter/material.dart';

class gridexample extends StatefulWidget {
  const gridexample({super.key});

  @override
  State<gridexample> createState() => _gridexampleState();
}

class _gridexampleState extends State<gridexample> {
  final List<String> _listImages = [
    'https://thumbs.dreamstime.com/b/hotel-10732347.jpg',
    'https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://www.princehotels.com/wp-content/uploads/2019/04/aboutslider2-1.jpg',
    'https://www.samhi.co.in/GIF/Hero-Header-Banner/hyatt-place-gurgaon.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("griview example"),
      ),
      body: Container(
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: _listImages
                .map((item) => Card(
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(item))),
                      ),
                    ))
                .toList()),
      ),
    );
  }
}
