// import 'dart:convert';

// import 'package:apidatabase/apimodel.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class homepage extends StatefulWidget {
//   const homepage({super.key});

//   @override
//   State<homepage> createState() => _homepageState();
// }

// class _homepageState extends State<homepage> {
//   Future<Products> dattyfatch() async {
//     final Response = await http.get(Uri.parse('https://dummyjson.com/users'));
//     var data = jsonDecode(Response.body);
//     if (Response.statusCode == 200) {
//       return Products.fromJson(data);
//     } else {
//       return Products.fromJson(data);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//           child: FutureBuilder<Products>(
//         future: dattyfatch(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//               itemCount: snapshot.data!.id!.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin: EdgeInsets.all(11),
//                   padding: EdgeInsets.all(11),
//                   decoration: BoxDecoration(color: Colors.blueGrey),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text("${snapshot.data!.id!.firstname}"),
//                     Text("${snapshot.data!.id![index].lastname}"),
//                     Text("${snapshot.data!.id![index].maidenName}"),
//                     Text("${snapshot.data!.id![index].age}"),
//                     Text("${snapshot.data!.id![index].gender}"),
//                     Text("${snapshot.data!.}"),
//                     Text("${snapshot.data!.price}"),
                    
                    
//                     ],
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       )),
//     );
//   }
// }
