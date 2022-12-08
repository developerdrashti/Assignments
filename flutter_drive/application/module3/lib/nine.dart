// 9. Write a code to display edit, view, delete options with context menu in listview and also perform
// respective operation on user's choice

import 'package:flutter/material.dart';



class Nine extends StatefulWidget {
  @override
  State<Nine> createState() => _NineState();
}

class _NineState extends State<Nine> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  final List<String> _names = [
    'Liam', 'Noah', 'Oliver', 'William', 'Elijah', 
    'James', 'Benjamin', 'Lucas', 'Mason', 'Ethan', 'Alexander'
  ];

   

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Pop Menu with List'),
      ),
      body: ListView.builder(
        itemBuilder: (_, i) {
          String name = _names[i];
          return ListTile(
            title: Text('$name'),
            trailing: PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete'),
                  )
                ];
              },
             
            ),
          );
        },
        itemCount: _names.length,
      ),
    );
  }
  
}
